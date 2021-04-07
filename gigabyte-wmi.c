// SPDX-License-Identifier: GPL-2.0-or-later
/*
 *  Copyright (C) 2021 Thomas Weißschuh <thomas@weissschuh.net>
 */
#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

#include <linux/acpi.h>
#include <linux/hwmon.h>
#include <linux/module.h>
#include <linux/wmi.h>

#define GIGABYTE_WMI_GUID "DEADBEEF-2001-0000-00A0-C90629100000"

enum gigabyte_wmi_commandtype {
	GIGABYTE_WMI_BUILD_DATE_QUERY       =   0x1,
	GIGABYTE_WMI_MAINBOARD_TYPE_QUERY   =   0x2,
	GIGABYTE_WMI_FIRMWARE_VERSION_QUERY =   0x4,
	GIGABYTE_WMI_MAINBOARD_NAME_QUERY   =   0x5,
	GIGABYTE_WMI_TEMPERATURE_QUERY      = 0x125,
};

struct gigabyte_wmi_args {
	u32 arg1;
};

static int gigabyte_wmi_perform_query(enum gigabyte_wmi_commandtype command,
				      struct gigabyte_wmi_args *args, struct acpi_buffer *out)
{
	const struct acpi_buffer in = {
		.length = sizeof(*args),
		.pointer = args,
	};

	acpi_status ret = wmi_evaluate_method(GIGABYTE_WMI_GUID, 0x0, command, &in, out);

	if (ret == AE_OK)
		return 0;
	else
		return -EIO;
}

static int gigabyte_wmi_query_integer(enum gigabyte_wmi_commandtype command,
				      struct gigabyte_wmi_args *args, u64 *res)
{
	union acpi_object *obj;
	struct acpi_buffer result = { ACPI_ALLOCATE_BUFFER, NULL };
	int ret;

	ret = gigabyte_wmi_perform_query(command, args, &result);
	if (ret)
		goto out;
	obj = result.pointer;
	if (obj && obj->type == ACPI_TYPE_INTEGER) {
		*res = obj->integer.value;
		if (!*res)
			ret = -ENODEV;
	} else {
		ret = -EIO;
	}
out:
	kfree(result.pointer);
	return ret;
}

static int gigabyte_wmi_temperature(u8 sensor, long *res)
{
	struct gigabyte_wmi_args args = {
		.arg1 = sensor,
	};
	u64 temp;
	acpi_status ret;

	ret = gigabyte_wmi_query_integer(GIGABYTE_WMI_TEMPERATURE_QUERY, &args, &temp);
	if (ret == 0)
		*res = (s8)temp * 1000; // value is a signed 8-bit integer
	return ret;
}

static int gigabyte_wmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
				   u32 attr, int channel, long *val)
{
	return gigabyte_wmi_temperature(channel, val);
}

static umode_t gigabyte_wmi_hwmon_is_visible(const void *data, enum hwmon_sensor_types type,
					     u32 attr, int channel)
{
	return 0444;
}

static const struct hwmon_channel_info *gigabyte_wmi_hwmon_info[] = {
	HWMON_CHANNEL_INFO(temp,
			   HWMON_T_INPUT,
			   HWMON_T_INPUT,
			   HWMON_T_INPUT,
			   HWMON_T_INPUT,
			   HWMON_T_INPUT,
			   HWMON_T_INPUT),
	NULL,
};

static const struct hwmon_ops gigabyte_wmi_hwmon_ops = {
	.read = gigabyte_wmi_hwmon_read,
	.is_visible = gigabyte_wmi_hwmon_is_visible,
};

static const struct hwmon_chip_info gigabyte_wmi_hwmon_chip_info = {
	.ops = &gigabyte_wmi_hwmon_ops,
	.info = gigabyte_wmi_hwmon_info,
};

static int gigabyte_wmi_probe(struct wmi_device *wdev, const void *context)
{
	struct device *hwmon_dev = devm_hwmon_device_register_with_info(&wdev->dev,
			"gigabyte_wmi", NULL,
			&gigabyte_wmi_hwmon_chip_info, NULL);

	return PTR_ERR_OR_ZERO(hwmon_dev);
}

static const struct wmi_device_id gigabyte_wmi_id_table[] = {
	{ GIGABYTE_WMI_GUID, NULL },
	{ },
};

static struct wmi_driver gigabyte_wmi_driver = {
	.driver = {
		.name = "gigabyte-wmi",
	},
	.id_table = gigabyte_wmi_id_table,
	.probe = gigabyte_wmi_probe,
};
module_wmi_driver(gigabyte_wmi_driver);

MODULE_DEVICE_TABLE(wmi, gigabyte_wmi_id_table);
MODULE_AUTHOR("Thomas Weißschuh <thomas@weissschuh.net>");
MODULE_DESCRIPTION("Gigabyte Temperature WMI Driver");
MODULE_LICENSE("GPL");

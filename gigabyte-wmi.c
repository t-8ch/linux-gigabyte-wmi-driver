// SPDX-License-Identifier: GPL-2.0-or-later
/*
 *  Copyright (C) 2021 Thomas Weißschuh <thomas@weissschuh.net>
 */
#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt

#include <linux/acpi.h>
#include <linux/hwmon-sysfs.h>
#include <linux/hwmon.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/platform_device.h>

#define GIGABYTE_WMI_GUID "DEADBEEF-2001-0000-00A0-C90629100000"
#define DRVNAME "gigabyte-wmi"

MODULE_AUTHOR("Thomas Weißschuh <thomas@weissschuh.net>");
MODULE_DESCRIPTION("Gigabyte Generic WMI Driver");
MODULE_LICENSE("GPL");

MODULE_ALIAS("wmi:" GIGABYTE_WMI_GUID);

enum gigabyte_wmi_commandtype {
	GIGABYTE_WMI_BUILD_DATE_QUERY       =   0x1,
	GIGABYTE_WMI_MAINBOARD_TYPE_QUERY   =   0x2,
	GIGABYTE_WMI_FIRMWARE_VERSION_QUERY =   0x4,
	GIGABYTE_WMI_MAINBOARD_NAME_QUERY   =   0x5,
	GIGABYTE_WMI_TEMPERATURE_QUERY      = 0x125,
};

static int gigabyte_wmi_temperature(u8 sensor, s8 *res);

static ssize_t temp_show(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	struct sensor_device_attribute_2 *sattr = to_sensor_dev_attr_2(attr);
	int index = sattr->index;
	s8 temp;
	acpi_status res;

	res = gigabyte_wmi_temperature(index, &temp);
	if (ACPI_FAILURE(res))
		return -res;

	return sysfs_emit(buf, "%d\n", temp * 1000);
}

static SENSOR_DEVICE_ATTR_2_RO(temp1_input, temp, 0, 0);
static SENSOR_DEVICE_ATTR_2_RO(temp2_input, temp, 0, 1);
static SENSOR_DEVICE_ATTR_2_RO(temp3_input, temp, 0, 2);
static SENSOR_DEVICE_ATTR_2_RO(temp4_input, temp, 0, 3);
static SENSOR_DEVICE_ATTR_2_RO(temp5_input, temp, 0, 4);
static SENSOR_DEVICE_ATTR_2_RO(temp6_input, temp, 0, 5);

static struct platform_device *gigabyte_wmi_pdev;


static struct attribute *gigabyte_wmi_hwmon_temp_attrs[] = {
	&sensor_dev_attr_temp1_input.dev_attr.attr,
	&sensor_dev_attr_temp2_input.dev_attr.attr,
	&sensor_dev_attr_temp3_input.dev_attr.attr,
	&sensor_dev_attr_temp4_input.dev_attr.attr,
	&sensor_dev_attr_temp5_input.dev_attr.attr,
	&sensor_dev_attr_temp6_input.dev_attr.attr,
	NULL,
};
ATTRIBUTE_GROUPS(gigabyte_wmi_hwmon_temp);

static int gigabyte_wmi_probe(struct platform_device *pdev)
{
	struct device *hwmon_dev;
	struct device *dev = &pdev->dev;

	if (!wmi_has_guid(GIGABYTE_WMI_GUID))
		return -ENODEV;
	gigabyte_wmi_pdev = pdev;

	hwmon_dev = devm_hwmon_device_register_with_groups(dev,
					"gigabyte_wmi",
					NULL, gigabyte_wmi_hwmon_temp_groups);
	return PTR_ERR_OR_ZERO(hwmon_dev);
}

static struct platform_driver gigabyte_wmi_driver = {
	.driver = {
		.name	= DRVNAME,
	},
	.probe	= gigabyte_wmi_probe,
};

struct args {
	u32 arg1;
	u32 arg2;
	u32 arg3;
};

static acpi_status gigabyte_wmi_perform_query(enum gigabyte_wmi_commandtype command, struct args *args, struct acpi_buffer *out)
{
	struct acpi_buffer in = {};

	if (!args) {
		struct args empty_args = {};

		args = &empty_args;
	}
	in.length = sizeof(*args);
	in.pointer = args;
	return wmi_evaluate_method(GIGABYTE_WMI_GUID, 0x0, command, &in, out);
}

static int gigabyte_wmi_query_integer(enum gigabyte_wmi_commandtype command, struct args *args, u64 *res)
{
	union acpi_object *obj;
	struct acpi_buffer result = { ACPI_ALLOCATE_BUFFER, NULL };
	acpi_status ret;

	ret = gigabyte_wmi_perform_query(command, args, &result);
	if (ACPI_FAILURE(ret))
		return -ENXIO;
	obj = result.pointer;
	if (!obj || obj->type != ACPI_TYPE_INTEGER) {
		pr_warn("Unexpected result type %d for command %d", obj->type, command);
		return -ENXIO;
	}
	*res = obj->integer.value;
	return AE_OK;
}

static int gigabyte_wmi_temperature(u8 sensor, s8 *res)
{
	struct args args = {
		.arg1 = sensor,
	};
	u64 temp;
	acpi_status ret;

	ret = gigabyte_wmi_query_integer(GIGABYTE_WMI_TEMPERATURE_QUERY, &args, &temp);
	if (ret == 0)
		*res = (s8) temp;
	return ret;
}

static int __init gigabyte_wmi_init(void)
{
	struct platform_device *pdev;
	int err;

	err = platform_driver_register(&gigabyte_wmi_driver);
	if (err)
		return err;
	pdev = platform_device_alloc(DRVNAME, -1);
	if (!pdev) {
		platform_driver_unregister(&gigabyte_wmi_driver);
		return -ENOMEM;
	}
	return platform_device_add(pdev);
}
module_init(gigabyte_wmi_init);

static void __exit gigabyte_wmi_exit(void)
{
	platform_device_unregister(gigabyte_wmi_pdev);
	platform_driver_unregister(&gigabyte_wmi_driver);
}
module_exit(gigabyte_wmi_exit);

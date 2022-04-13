# Linux Driver for WMI on Gigabyte Mainboards

***This driver is now part of the Linux mainline kernel. This repository is
only for historical reference. All development happens upstream***

Tested with
* X570 I Aorus Pro Wifi (rev 1.0)
* B550M DS3H
* B550 Gaming X V2 (rev.1.x)
* Z390 I AORUS PRO WIFI (rev. 1.0)

References:
* https://github.com/lm-sensors/lm-sensors/issues/154
* https://bugzilla.kernel.org/show_bug.cgi?id=204807
* https://lwn.net/Articles/391230/
* https://uefi.org/specs/ACPI/6.4/19_ASL_Reference/ACPI_Source_Language_Reference.html#indexfield-declare-index-data-fields

Upstreaming:
* https://lore.kernel.org/platform-driver-x86/20210405132007.290275-1-linux@weissschuh.net/

Open questions:
* The ASL IndexField does not cover all relevant registers, can it be extended somehow?
* Not all registers are exposed via ACPI methods, can they be accessed directly?
* Some registers are exposed via ACPI methods but are not reachable directly from the WMI dispatcher.
  * Does ASL have some sort of reflection that could enable those methods?
  * Is it possible to call those methods directly, bypassing WMI?

## Installation

* `make`
* `sudo insmod ./gigabyte-wmi.ko force_load=1`

## Testing

* `cat /sys/class/wmi_bus/wmi_bus-PNP0C14\:00/DEADBEEF-2001-0000-00A0-C90629100000/hwmon/hwmon*/temp?_input`
* `sensors`
* Report your results on https://github.com/t-8ch/linux-gigabyte-wmi-driver/issues/1

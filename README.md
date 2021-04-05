# Linux Driver for WMI on Gigabyte Mainboards

Tested with
* Gigabyte X570 I Aorus Pro Wifi (rev 1.0)

References:
* https://github.com/lm-sensors/lm-sensors/issues/154
* https://bugzilla.kernel.org/show_bug.cgi?id=204807
* https://lwn.net/Articles/391230/
* https://uefi.org/specs/ACPI/6.4/19_ASL_Reference/ACPI_Source_Language_Reference.html#indexfield-declare-index-data-fields

Open questions:
* The ASL IndexField does not cover all relevant registers, can it be extended somehow?
* Not all registers are exposed via ACPI methods, can they be accessed directly?
* Some registers are exposed via ACPI methods but are not reachable directly from the WMI dispatcher.
  * Does ASL have some sort of reflection that could enable those methods?
  * Is it possible to call those methods directly, bypassing WMI?

## Installation

* `make install`
* `sudo insmode ./gigabyte-wmi.ko`

## Testing

* `cat /sys/devices/platform/gigabyte-wmi/hwmon/hwmon*/temp*input`
* `sensors`

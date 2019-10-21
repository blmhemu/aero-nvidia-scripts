if optimus-manager --print-mode | grep -iw intel ; then
    if modinfo acpi_call &> /dev/null ; then
        modprobe acpi_call
    fi
    tee /sys/bus/pci/devices/0000:01:00.0/remove <<< 1
    tee /proc/acpi/call <<< '\_SB.PCI0.PEG0.PEGP._OFF'
fi

if [ modinfo acpi_call &> /dev/null ]; then
    modprobe acpi_call
fi
tee /proc/acpi/call <<< '\_SB.PCI0.PEG0.PEGP._ON'
tee /sys/bus/pci/rescan <<< 1

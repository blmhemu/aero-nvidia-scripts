if optimus-manager --print-mode | grep -iw intel ; then
    if modinfo acpi_call &> /dev/null ; then
        modprobe acpi_call
    fi
    if modinfo nvidia_drm &> /dev/null; then
        rmmod nvidia_drm
    fi
    if modinfo nvidia_modeset &> /dev/null; then
        rmmod nvidia_modeset
    fi
    if modinfo nvidia &> /dev/null; then
        rmmod nvidia
    fi
    tee /sys/bus/pci/devices/0000:01:00.0/remove <<< 1
    tee /proc/acpi/call <<< '\_SB.PCI0.PEG0.PEGP._OFF'
fi

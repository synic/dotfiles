#!/bin/bash

# thinkpad x270 w/ ultradock udev rules:
# SUBSYSTEM=="usb", ACTION=="add", ENV{ID_VENDOR_ID}=="17ef", ENV{ID_MODEL_ID}=="100f", RUN+="/home/synic/bin/dock_hook.sh 1"
# SUBSYSTEM=="usb", ACTION=="remove", ENV{ID_VENDOR_ID}=="17ef", ENV{ID_MODEL_ID}=="100f", RUN+="/home/synic/bin/dock_hook.sh 0"


sleep 1

case "$1" in
    "0")
        logger 'undocked event'
        DISPLAY=:0.0 su -c '/home/synic/bin/undock' synic
    ;;
    "1")
        logger 'docked event'
        DISPLAY=:0.0 su -c '/home/synic/bin/dock' synic
    ;;
esac

exit 0

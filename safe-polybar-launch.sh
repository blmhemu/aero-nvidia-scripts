if optimus-manager --print-mode | grep -iw intel;
then
    sudo /home/blmhemu/nvidia-scripts/nvidia-on.sh
    al-polybar-session
    sleep 5
    while ! pgrep -x polybar > /dev/null; do sleep 1 ;done
    sudo /home/blmhemu/nvidia-scripts/nvidia-off.sh
else
    al-polybar-session
fi

#!/system/bin/sh
[ $(cat /sys/class/power_supply/battery/capacity) -le 5 ] && dumpsys battery set status 2 || dumpsys battery reset
# Produces "21 days", for example
# brightness
brightness=$(cat /sys/class/backlight/amdgpu_bl1/brightness)
# brightness_perc=$(var=$(cat /sys/class/backlight/amdgpu_bl1/brightness) "/" 255 "*" 100)

uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

temp=$(sensors | cut -d ' ' -f9 | sed -n 32p)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %F %H:%M")

volume=$(pamixer --get-volume)
battery=$(cat /sys/class/power_supply/BAT0/capacity)

# Get the Linux version but remove the "-1-ARCH" part
echo "Bat: "$battery"%" "| Vol:" $volume"%" "| Temp" $temp "|" $date_formatted "| Awake for:" $uptime_formatted "| Bright" $brightness


uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)

temp=$(sensors | cut -d ' ' -f10 | sed -n 3p)

# The abbreviated weekday (e.g., "Sat"), followed by the ISO-formatted date
# like 2018-10-06 and the time (e.g., 14:01)
date_formatted=$(date "+%a %F %H:%M")

# volume levels 
volume=$(pamixer --get-volume)

# Get the Linux version but remove the "-1-ARCH" part
echo "Vol:" $volume"%" "| Cold" $temp "|" $date_formatted "| Uptime:" $uptime_formatted


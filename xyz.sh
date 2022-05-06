whiptail --title "Example Dialog" --msgbox "This is an example of a message box. You must hit OK to continue." 8 78



IP_MSG="$(curl --no-progress-meter http://ifconfig.io 2>&1)"
STATUS=$? 

if [ $STATUS -ne 0 ]; then
    MESSAGE="Error Occurred! [ $IP_MSG ]"
    zenity --notification --window-icon=error --text="$MESSAGE"
else
    MESSAGE="My Public IP: $IP_MSG"
    zenity --info --text="$MESSAGE"
fi
echo $MESSAGE







echo "\033[5;31;46mSTART TO COMMIT THE CODE\033[0m" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)

echo "\n"

echo "\033[31;5mSTART TO COMMIT THE CODE\033[0m" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)

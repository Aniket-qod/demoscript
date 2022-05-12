#whiptail --title "   Congratulations   " --msgbox "   The code is committed successfully on git ...... 🎉🎉🎉🎉🎉🎉" 8 70

whiptail --yes-button "Yes" --no-button "No" --title "Aniket Mudawar" --yesno "   Welcome to my animated script. Click on Yes to continue ..." 8 70


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

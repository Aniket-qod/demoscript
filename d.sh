
# Since whiptail has to use stdout to display dialog, entered value will
# be stored in stderr. To switch them and get the value to stdout you must
# use 3>&1 1>&2 2>&3
FOLDER_PATH=$(whiptail --title "Get the size of folder" \
--inputbox "Enter folder path:" \
10 30 \
"/home" \
3>&1 1>&2 2>&3)

if [ -d $FOLDER_PATH ]
then
size=$(du -hs "$FOLDER_PATH" | awk '{print $1}')
whiptail --title "Information" \
--msgbox "Size of ${FOLDER_PATH} is ${size}" \
10 40
elif [ -f $FOLDER_PATH ]
then
whiptail --title "Warning!!!" \
--msgbox "The path you entered is a path to a file not a folder!" \
10 40
else
whiptail --title "Error!!!"
--msgbox "Path you entered is not recognized. Please try again" \
10 40
fi

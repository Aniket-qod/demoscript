#whiptail --yes-button "Yeah" --no-button "Nope" --title "Choose the answer" --yesno "Will you choose yes?" 10 30





#whiptail --inputbox "Enter your number please." 10 30 "10"

name=$(whiptail --inputbox "Enter your name" 10 30 3>&1 1>&2 2>&3)

echo "Hello $name" 



#whiptail --menu "This is a menu. Choose an option:" 20 50 10 1 "first" 2 "second" 3 "third"

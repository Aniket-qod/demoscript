clear
whiptail --title "   Aniket Mudawar   " --msgbox "   Welcome to my animated script. Click on OK to continue ......" 8 70

emoji='\033[3;1;96m😜 😜'
heading_color='\033[3;1;91m'
text_color='\033[3;2;96m'
NC='\033[0m'

echo "\n\n"

spinner() {
    local PROC="$1"
    local str="${2:-'Script is preparing for the commit ...........☆'}"
    local delay="0.9"
    tput civis  # hide cursor
    printf "\033[3;1;92m"
    while [ -d /proc/$PROC ]; do
        printf '\033[s\033[u Script is preparing for the commit [ .......................................... / ] %s\033[u'; sleep "$delay"
        printf '\033[s\033[u Script is preparing for the commit [ .......................................... — ] %s\033[u'; sleep "$delay"
        printf '\033[s\033[u Script is preparing for the commit [ .......................................... \ ] %s\033[u'; sleep "$delay"
        printf '\033[s\033[u Script is preparing for the commit [ .......................................... | ] %s\033[u'; sleep "$delay"
    done
    printf '\033[s\033[u%*s\033[u\033[0m' $((${#str}+6)) " "  # return to normal
    tput cnorm  # restore cursor
    return 0
}

running_bar(){

    count=0
    total=30
    pstr="[>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>]"

    while [ $count -lt $total ]; do
      sleep 0.5 # this is work
      count=$(( $count + 1 ))
      pd=$(( $count * 45 / $total ))
      printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
    done
}

progress_bar1(){

    for i in $(seq 1 100)
    do
        sleep 0.1 
        echo $i
    done | whiptail --title 'Git Pull' --gauge 'git pull running ....' 6 60 0


}

progress_bar2(){

    for i in $(seq 1 100)
    do
        sleep 0.1 
        echo $i
    done | whiptail --title 'Git Add' --gauge 'Adding file ....' 6 60 0


}

sleep 5 &
echo "📡📡📡📡📡📡📡📡📡📡";
echo "\n"
spinner $!


clear
echo "\n"
echo "\033[96;5m🌟🌟🌟🌟🌟     START TO COMMIT THE CODE     🌟🌟🌟🌟🌟\033[0m${NC}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
sleep 3





echo "\n\n"
echo "${heading_color}*********************         Taking the pull        *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n${emoji}\n"
echo "${text_color}"
sleep 3

git branch
sleep 3

user_name=$(whiptail --title "   Username   " --inputbox " \n Enter the git Username for committing code  ==> " 10 70 3>&1 1>&2 2>&3)
token=$(whiptail --title "   Token   " --inputbox " \n Enter the git Token for committing code  ==> " 10 70 3>&1 1>&2 2>&3)
progress_bar1

git pull https://$user_name:$token@github.com/Aniket-qod/script.git
sleep 3
echo "${NC}"





echo "\n"
echo "${heading_color}*********************      See the Modified File     *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n${emoji}\n"
echo "${text_color}"

git status
sleep 3








echo "\n"
echo "${heading_color}*********************    Add the files for commit    *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n${emoji}\n"
echo "${text_color}"

read -p "Enter the file which want to commit ==> " file








echo "\n"
echo "${NC}"
echo "${heading_color}*********************    Selected files for commit   *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n${emoji}\n"
echo "${text_color}"

echo "Selected files  =======> " $file
sleep 3






echo "\n"
echo "${NC}"
echo "${heading_color}*********************     Adding files for commit    *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n${emoji}\n"
echo "${text_color}"
progress_bar2

git add $file

echo "Added Files     =======> "
echo "${text_color}"

git status
sleep 3







echo "\n"
echo "${heading_color}*********************    Commit code with message    *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n${emoji}\n"
echo "${text_color}"

#read -p "Enter the message for committing code  ==> " message
message=$(whiptail --title "   Message   " --inputbox " \n Enter the message for committing code  ==> " 10 70 3>&1 1>&2 2>&3)
git commit -m  "$message"

echo "\n"
echo "Entered message =======> " $message

sleep 3



echo "\n"
echo "${NC}"
echo "${heading_color}*********************        Push code on git        *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n${emoji}\n"
echo "${text_color}"

git push https://$user_name:$token@github.com/Aniket-qod/script.git



echo "\n"
echo "${NC}"
echo "${heading_color}********************* Code is Committed Successfully *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n\n\n\n"

clear
whiptail --yes-button "Yes" --no-button "No" --title "Aniket Mudawar" --yesno "   Welcome to my animated script. Click on Yes to continue ..." 8 70

heading_color='\033[3;1;91m'
text_color='\033[3;2;96m'
NC='\033[0m'

echo "\n"

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

sleep 5 &
spinner $!



clear
echo "\n"
echo "\033[96;5m      START TO COMMIT THE CODE\033[0m${NC}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
sleep 3





echo "\n"
echo "${heading_color}*********************         Taking the pull        *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

git branch

count=0
total=30
pstr="[>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>]"

while [ $count -lt $total ]; do
  sleep 0.5 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 45 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done

echo "\n"
echo "\n"

git pull
sleep 3
echo "${NC}"





echo "\n"
echo "${heading_color}*********************      See the Modified File     *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

git status
sleep 3








echo "\n"
echo "${heading_color}*********************    Add the files for commit    *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

read -p "Enter the file which want to commit ==> " file








echo "\n"
echo "${NC}"
echo "${heading_color}*********************    Selected files for commit   *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

echo "Selected file =====> " $file
sleep 3






echo "\n"
echo "${NC}"
echo "${heading_color}*********************     Adding files for commit    *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

count=0
total=30
pstr="[>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>]"

while [ $count -lt $total ]; do
  sleep 0.5 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 45 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done

echo "\n"
echo "\n"
git add $file

echo "Added Files =====> "
echo "${text_color}"

git status
sleep 3







echo "\n"
echo "${heading_color}*********************    Commit code with message    *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

#read -p "Enter the message for committing code  ==> " message
message=$(whiptail --inputbox "Enter the message for committing code  ==> " 10 70 3>&1 1>&2 2>&3)
git commit -m  "$message"
sleep 3



echo "\n"
echo "${NC}"
echo "${heading_color}*********************        Push code on git        *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

git push






echo "\n"
echo "${NC}"
echo "${heading_color}********************* Code is Committed Successfully *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
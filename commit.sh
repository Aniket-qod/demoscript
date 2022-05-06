clear
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

## simple example with sleep
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
git pull

echo "${NC}"
echo "\n"
echo "${heading_color}*********************      See the Modified File     *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

git status

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

echo "\n"
echo "${NC}"
echo "${heading_color}*********************     Adding files for commit    *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

count=0
total=30
# pstr="[===========================================]"
pstr="[>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>]"

while [ $count -lt $total ]; do
  sleep 0.5 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 45 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done

echo "\n"

git add $file

echo "Added Files =====> "
echo "\n"
echo "${text_color}"

git status

echo "\n"
echo "${heading_color}*********************    Commit code with message    *********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"
echo "${text_color}"

read -p "Enter the message for committing code  ==> " message

git commit -m  "$message"

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


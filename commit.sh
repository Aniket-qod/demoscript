clear
heading_color='\033[1;91m'
text_color='\033[0;96m'
NC='\033[0m'

echo "\n"
echo "\n"
echo "\033[96;5mSTART TO COMMIT THE CODE\033[0m${NC}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

sleep 5

echo "\n"
echo "${heading_color}*********************  Taking the pull  ***********************${text_color}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git branch
git pull

echo "\n"
echo "${heading_color}********************* See the Modified File ***********************${text_color}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git status

echo "\n"
echo "${heading_color}******************** Add the files for commit **********************${NC}${text_color}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

read -p "Enter the file which want to commit ==> " file

echo "\n"
echo "${heading_color}******************** Selected file for commit **********************${NC}${text_color}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

echo $file

echo "\n"
echo "${heading_color}******************* Adding files for commit ************************${NC}${text_color}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git add $file

echo "\n"
echo "${heading_color}******************* Added files for commit  ***********************${NC}${text_color}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git status

echo "\n"
echo "${heading_color}******************* Commit code with message ************************${NC}${text_color}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

read -p "Enter the message for committing code  ==> " message

git commit -m  "$message"

echo "\n"
echo "${heading_color}*********************  Push code on git  **************************${NC}${text_color}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git push

echo "\n"
echo "${heading_color}********************* Code is Committed Successfully ************************${NC}${text_color}" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

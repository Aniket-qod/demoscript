clear
echo "\n"
echo "*********************  Taking the pull  ***********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git branch
git pull

echo "\n"
echo "********************* See the Modified File ***********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git status

echo "\n"
echo "******************** Add the files for commit **********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

read -p "Enter the file which want to commit ==> " file

echo "\n"
echo "******************** Selected file for commit **********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

echo $file

echo "\n"
echo "******************* Adding files for commit ************************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git add $file

echo "\n"
echo "******************* Added files for commit  ***********************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git status

echo "\n"
echo "******************* Commit code with message ************************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

read -p "Enter the message for committing code  ==> " message

git commit -m  "$message"

echo "\n"
echo "*********************  Push code on git  **************************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"

git push

echo "\n"
echo "********************* Code is Committed Successfully ************************" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)
echo "\n"




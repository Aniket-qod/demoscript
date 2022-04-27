echo "\033[5;31;46mSTART TO COMMIT THE CODE\033[0m" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)

echo "\n"
echo "\033[31;5mSTART TO COMMIT THE CODE\033[0m" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)

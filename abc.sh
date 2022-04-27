echo "$(tput setaf 3)" "$(tput blink)" "Title of the Program" "$(tput sgr0)" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)

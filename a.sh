count=0
total=30
# pstr="[===========================================]"
pstr="[-->-->-->-->-->-->-->-->-->-->-->-->-->-->>]"

while [ $count -lt $total ]; do
  sleep 0.5 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 45 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done




echo "$(tput setaf 3)" "$(tput blink)" "Title of the Program" "$(tput sgr0)" | sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta" | tr -d '\n' | head -c $(tput cols)

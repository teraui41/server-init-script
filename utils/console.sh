WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"
BLUE="\33[34m"

case $1 in
info) 
  echo "${YELLO} $2 ${END_COLOR}";;
start)  
  echo "${BLUE} $2 ${END_COLOR}";;
*)
  echo "$2";;
esac




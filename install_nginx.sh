
WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"

echo "${WHITE_BG} > Start install NGINX ... ${END_COLOR}";
echo "${YELLO} > Update apt-get ... ${END_COLOR}"

sudo apt-get update;

echo "${YELLO} > Install nginx ... ${END_COLOR}"

sudo apt-get install nginx
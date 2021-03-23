WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"

echo "${WHITE_BG} > Start install Redis ... ${END_COLOR}";

sudo apt-get install redis-server

redis-server

echo "${WHITE_BG} > Install completed ... ${END_COLOR}";

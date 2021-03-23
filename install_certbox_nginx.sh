WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"

echo "${WHITE_BG} > Start install Certbox ... ${END_COLOR}";

echo "${YELLO} > Create Certbot repository ... ${END_COLOR}";

sudo add-apt-repository ppa:certbot/certbot;

echo "${YELLO} > Install certbot ... ${END_COLOR}";

sudo apt-get update
sudo apt-get install certbot
sudo apt-get install python-certbot-nginx


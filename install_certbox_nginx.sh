# https://certbot.eff.org/lets-encrypt/ubuntufocal-nginx

WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"

echo "${WHITE_BG} > Start install Certbox ... ${END_COLOR}";

echo "${YELLO} > Ensure that your version of snapd is up to date ... ${END_COLOR}";

sudo snap install core; sudo snap refresh core

echo "${YELLO} > Install Certbot ... ${END_COLOR}";

sudo snap install --classic certbot;

echo "${YELLO} > Prepare the Certbot command ... ${END_COLOR}";

sudo ln -s /snap/bin/certbot /usr/bin/certbot;

sudo certbot --nginx;


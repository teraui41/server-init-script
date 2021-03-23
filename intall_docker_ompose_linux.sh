WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"

echo "${WHITE_BG} > Start install Docker Compose ... ${END_COLOR}";

echo "${YELLO} > Download docker compose ... ${END_COLOR}"

sudo curl -L "https://github.com/docker/compose/releases/download/1.28.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

echo "${YELLO} > Apply executable permissions to the binary ... ${END_COLOR}"

sudo chmod +x /usr/local/bin/docker-compose

echo "${WHITE_BG} > Install completed ... ${END_COLOR}";

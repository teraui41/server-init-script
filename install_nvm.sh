WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"

echo "${WHITE_BG} > Start install NVM ... ${END_COLOR}";

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash;

source ~/.zshrc;

echo "${WHITE_BG} > Install completed ... ${END_COLOR}";

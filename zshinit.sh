# Ubuntu install zsh shell

WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"

echo "${WHITE_BG} > Start install zsh ... ${END_COLOR}";
echo "${YELLO} > Update apt-get ... ${END_COLOR}"

sudo apt-get update;

echo "${YELLO} > Upgrade apt-get ... ${END_COLOR}";

sudo apt-get upgrade;

echo "${YELLO} > Install zsh ... ${END_COLOR}";

sudo apt-get install zsh

echo "${YELLO} > Install oh-my-zsh ... ${END_COLOR}";

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "${YELLO} > Change default Shell ... ${END_COLOR}";

chsh -s /bin/zsh

echo "${YELLO} > Change default Style ... ${END_COLOR}";

sed -i "s/robbyrussell/agnoster/g" ~/.zshrc

source ~/.zshrc
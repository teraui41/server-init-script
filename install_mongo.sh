WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"

echo "${WHITE_BG} > Start install Mongo ... ${END_COLOR}";

echo "${YELLO} > Import the public key used by the package management system ... ${END_COLOR}";

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo "${YELLO} > Install gnupg and its required libraries ... ${END_COLOR}";

sudo apt-get install gnupg

echo "${YELLO} > retry importing the key ... ${END_COLOR}";

wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

echo "${YELLO} > Ubuntu 20.04 (Focal) Create the /etc/apt/sources.list.d/mongodb-org-4.4.list  ... ${END_COLOR}";

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list

echo "${YELLO} > Reload local package database ... ${END_COLOR}";

sudo apt-get update

echo "${YELLO} > Install Mongo DB ... ${END_COLOR}";

sudo apt-get install -y mongodb-org

echo "mongodb-org hold" | sudo dpkg --set-selections
echo "mongodb-org-server hold" | sudo dpkg --set-selections
echo "mongodb-org-shell hold" | sudo dpkg --set-selections
echo "mongodb-org-mongos hold" | sudo dpkg --set-selections
echo "mongodb-org-tools hold" | sudo dpkg --set-selections

echo "${WHITE_BG} > Install completed ... ${END_COLOR}";

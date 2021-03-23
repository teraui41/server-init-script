WHITE_BG="\033[47;30m"
END_COLOR="\033[0m"
YELLO="\33[33m"

echo "${WHITE_BG} > Start install Docker ... ${END_COLOR}";
echo "${YELLO} > Update apt-get ... ${END_COLOR}"

sudo apt-get update;

echo "${YELLO} > allow apt to use a repository over HTTPS ... ${END_COLOR}";

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release;

echo "${YELLO} > Add Docker’s official GPG key ... ${END_COLOR}";

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "${YELLO} > Set up the stable repository ... ${END_COLOR}";

echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "${YELLO} > Install docker engine ... ${END_COLOR}";

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "${WHITE_BG} > Install completed ... ${END_COLOR}";

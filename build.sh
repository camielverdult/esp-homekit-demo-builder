# Install docker
apt update

apt install apt-transport-https ca-certificates curl gnupg lsb-release

curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

apt update
apt install docker-ce docker-ce-cli containerd.io

docker build . -f esp-sdk-dockerfile -t esp-sdk
docker build . -f esp-rtos-dockerfile -t esp-rtos
git clone --recursive https://github.com/SuperHouse/esp-open-rtos.git
pip install esptool
git clone --recursive https://github.com/maximkulkin/esp-homekit-demo.git

echo "Follow step 9 from:"
echo "https://github.com/maximkulkin/esp-homekit-demo/wiki/Build-instructions-ESP8266-(Docker)"

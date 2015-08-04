#prereqs- fresh ubuntu 12.04 image, no ui
sudo apt-get update
#node
sudo apt-get install --yes curl
curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
sudo apt-get install --yes nodejs
#homebridge
npm install homebridge

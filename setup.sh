#prereqs- minimual ubuntu-standard 14.04 installation
#sudo apt-get update
#curl
sudo apt-get install --yes git curl make python g++ libavahi-compat-libdnssd-dev build-essential

#node
if !(hash npm 2>/dev/null); then
  curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
  sudo apt-get install --yes nodejs
fi
#homebridge
if !(hash homebridge 2>/dev/null); then
  git clone https://github.com/nfarina/homebridge.git
  cd homebridge
  npm install
  cd ..
fi
cp config.json homebridge/
cd homebridge
npm run start

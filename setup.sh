#prereqs before running: minimual ubuntu-standard 14.04 installation

#install apt prereqs
sudo apt-get update
sudo apt-get install --yes git curl make python g++ libavahi-compat-libdnssd-dev build-essential
#node
if !(hash npm 2>/dev/null); then
  curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
  sudo apt-get install --yes nodejs
fi
#install homebridge
if !(hash homebridge 2>/dev/null); then
  git clone https://github.com/nfarina/homebridge.git
  cd homebridge
  npm install
  cd ..
fi
#config homebridge
cp config.json homebridge/
#run homebridge
cd homebridge
npm run start

#prereqs before running: minimual ubuntu-standard 14.04 installation

#install apt prereqs
stat -c %y /var/lib/apt/periodic/update-success-stamp
#TODO: run update if above timestamp is old or doesn't exist
#sudo apt-get update
sudo apt-get install --yes git curl make python g++ libavahi-compat-libdnssd-dev build-essential
#node
if !(hash npm 2>/dev/null); then
  curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
  sudo apt-get install --yes nodejs
fi
#install homebridge
if [ ! -d "homebridge" ]; then
  git clone https://github.com/nfarina/homebridge.git
  cd homebridge
  npm install
  cd -
fi
#config homebridge
cp config.json homebridge/
#run homebridge
cd homebridge
npm run start

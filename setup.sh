#prereqs- fresh ubuntu 12.04 image, no ui
#sudo apt-get update
#curl
if !(hash curl 2>/dev/null); then
  sudo apt-get install --yes curl
fi
#make
if !(hash curl 2>/dev/null); then
  sudo apt-get install --yes make
fi
#python
if !(hash python 2>/dev/null); then
  sudo apt-get install --yes python
fi
#node
if !(hash npm 2>/dev/null); then
  curl --silent --location https://deb.nodesource.com/setup_0.12 | sudo bash -
  sudo apt-get install --yes nodejs
fi
#homebridge
if !(hash homebridge 2>/dev/null); then
  npm install homebridge
fi

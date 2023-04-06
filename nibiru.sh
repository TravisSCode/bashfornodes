sudo apt update && sudo apt install git build-essential ufw curl jq snapd --yes

wget https://golang.org/dl/go1.18.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz
export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GO111MODULE=on
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin

cd $HOME
git clone https://github.com/NibiruChain/nibiru
cd nibiru
git checkout v0.15.0
make install

apt install jq


curl -s https://get.nibiru.fi/! | bash

wget https://github.com/NibiruChain/nibiru/releases/download/v0.19.2/nibid_0.19.2_linux_amd64.tar.gz

tar -xvf nibid_0.19.2_linux_amd64.tar.gz && mv nibirud nibid

cp nibid /bin/nibid

NETWORK=nibiru-itn-1
curl -s https://networks.itn.nibiru.fi/$NETWORK/genesis > $HOME/.nibid/config/genesis.json
shasum -a 256 $HOME/.nibid/config/genesis.json



cd $HOME

git clone https://github.com/NibiruChain/cw-nibiru.git

mv cw-nibiru/artifacts-cw-plus/cw1_whitelist.wasm /root

rm -rf cw-nibiru
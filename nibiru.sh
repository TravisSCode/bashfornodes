sudo apt-get update
sudo apt-get upgrade
sudo apt install git build-essential ufw curl jq snapd --yes

wget https://golang.org/dl/go1.18.2.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.18.2.linux-amd64.tar.gz

sudo apt install jq

sudo apt install tmux

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GO111MODULE=on
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
source ~/.profile

cd $HOME
git clone https://github.com/NibiruChain/nibiru
cd nibiru
git checkout v0.19.2
make install

cd $HOME

git clone https://github.com/NibiruChain/cw-nibiru.git

mv cw-nibiru/artifacts-cw-plus/cw1_whitelist.wasm /root

rm -rf cw-nibiru

rm -rf go1.18.2.linux-amd64.tar.gz

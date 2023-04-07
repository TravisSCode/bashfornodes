sudo apt update && sudo apt upgrade --yes
sleep 5

sudo apt-get install tmux
sleep 5

wget https://lamina1.github.io/lamina1/lamina1.latest.ubuntu-latest.tar.gz
sleep 5

tar -xvzf lamina1.latest.ubuntu-latest.tar.gz
sleep 10

cd lamina1/
sleep 5

rm -rf $HOME/root/lamina1.latest.ubuntu-latest.tar.gz

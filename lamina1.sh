sudo apt update && sudo apt upgrade --yes
sleep 5
sudo apt-get install tmux
sleep 5
wget https://lamina1.github.io/lamina1/lamina1.latest.ubuntu-latest.tar.gz
sleep 5
tar -xvzf lamina1.latest.ubuntu-latest.tar.gz
sleep 10
cd lamina1
sleep 5
curl https://lamina1.github.io/lamina1/config.testnet.tar | tar xf - 

echo "Копируем ID и смотрим статус синхронизации"
rm -rf lamina1.latest.ubuntu-latest.tar.gz

sudo apt update && sudo apt upgrade --yes

sudo apt-get install tmux

https://lamina1.github.io/lamina1/lamina1.latest.ubuntu-latest.tar.gz

tar -xvzf lamina1.latest.ubuntu-latest.tar.gz

cd lamina1

curl https://lamina1.github.io/lamina1/config.testnet.tar | tar xf - 

echo "Копируем ID и смотрим статус синхронизации"

rm -rf lamina1.latest.ubuntu-latest.tar.gz

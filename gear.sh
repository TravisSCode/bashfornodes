#!/bin/bash

function install() {
sudo apt-get update && sudo apt-get upgrade -y
sudo apt install -y clang build-essential binaryen cmake protobuf-compiler
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source "$HOME/.cargo/env"
rustup toolchain add nightly
rustup target add wasm32-unknown-unknown --toolchain nightly

git clone https://github.com/gear-tech/gear.git
cd gear
wget https://get.gear.rs/gear-nightly-linux-x86_64.tar.xz && \
tar xvf gear-nightly-linux-x86_64.tar.xz && \
rm gear-nightly-linux-x86_64.tar.xz
git checkout stable
make node-release
echo "Нода Gear установлена"
./gear

}

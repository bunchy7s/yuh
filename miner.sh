#!/bin/bash

sudo su

apt-get update
apt-get install -y build-essential git autotools-dev autoconf libcurl3 libcurl4-gnutls-dev

git clone https://github.com/wolf9466/cpuminer-multi
cd cpuminer-multi
./autogen.sh

CFLAGS="-march=native" ./configure
#Disable AES instruction when your CPU lacks them
#CFLAGS="-march=native" ./configure --disable-aes-ni

make
make install

# Start the miner with the following command:
# You can change the mining pool, and you definitely must set the wallet address to match yours.
# The -t parameter is for CPU threads to use; if missing, the miner will use all available threads.
pool="stratum+tcp://monerohash.com:3333"
wallet="4Ac3QisYNfee5A21H75Qt4c8C9GGRhstENAQxqACn8TP4U3gdsm2Cno5VC4Cqw8FqD4tmnaoDPyKqToYXerx5ybSS87s28V"

# Start the miner
minerd -a cryptonight -o $pool -u $wallet -p x -t 4

#!/bin/bash

# Install dependencies
sudo apt update
sudo apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

# Clone and build XMRig
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build && cd build
cmake ..
make -j$(nproc)

# Run XMRig with your configuration
./xmrig --url=pool.minexmr.com:5555 --user=YOUR_WALLET_ADDRESS --pass=x

# Pause for 5 seconds before the script exits (optional)
sleep 5

#!/bin/bash

# Install dependencies (uncomment the following lines if needed)
# sudo apt update
# sudo apt install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev

# Clone and build XMRig
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build && cd build
cmake ..
make -j$(nproc)

# Run XMRig with your configuration
./xmrig --url=pool.minexmr.com:5555 --user=4Ac3QisYNfee5A21H75Qt4c8C9GGRhstENAQxqACn8TP4U3gdsm2Cno5VC4Cqw8FqD4tmnaoDPyKqToYXerx5ybSS87s28V --pass=x

# Pause for 5 seconds before the script exits (optional)
sleep 5

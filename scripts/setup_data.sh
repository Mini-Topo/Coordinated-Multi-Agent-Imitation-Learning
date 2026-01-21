#!/usr/bin/env bash
set -e

ASSET=raptors.7z
URL=https://github.com/Mini-Topo/Coordinated-Multi-Agent-Imitation-Learning/releases/download/v1.0-data/$ASSET

echo "Installing p7zip..."
sudo apt update
sudo apt install -y p7zip-full

echo "Downloading dataset..."
wget -q $URL

echo "Extracting..."
7z x $ASSET

echo "Moving data..."
mv raptors/data/* data/

echo "Cleaning up..."
rm -rf raptors $ASSET

echo "Dataset setup complete."

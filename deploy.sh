#!/usr/bin/env bash
set -e

cd ~/app  
sudo docker build -t testing:latest .
sudo docker rm -f testing || true
sudo docker run -d --name testing --restart unless-stopped -p 80:3000 testing:latest

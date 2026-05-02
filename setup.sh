#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y

# Install Docker
sudo apt install docker.io docker-compose -y
sudo systemctl start docker
sudo systemctl enable docker

# Install Nginx
sudo apt install nginx -y

# Install Certbot
sudo apt install certbot python3-certbot-nginx -y

# Copy Nginx config
sudo cp nginx.conf /etc/nginx/sites-available/n8n
sudo ln -s /etc/nginx/sites-available/n8n /etc/nginx/sites-enabled/

# Start n8n
docker-compose up -d

echo "n8n is running!"

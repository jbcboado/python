#!/bin/bash

echo "deleting old app"
sudo rm -rf /var/www/

echo "creating app folder"
sudo mkdir -p /var/www/langchain-app 

echo "moving files to app folder"
sudo mv  * /var/www/langchain-app

# Navigate to the app directory
cd /var/www/langchain-app/
sudo mv env .env

sudo apt-get update
echo "installing python and pip"
sudo apt-get install -y python3 python3-pip

# Install application dependencies from requirements.txt
echo "Install application dependencies from requirements.txt"
sudo pip install -r requirements.txt



# Stop any existing Gunicorn process


# # Start Gunicorn with the Flask application
# # Replace 'server:app' with 'yourfile:app' if your Flask instance is named differently.
# # gunicorn --workers 3 --bind 0.0.0.0:8000 server:app &
echo "starting helloJames"
python3 helloJames.py
echo "started helloJames 🚀"

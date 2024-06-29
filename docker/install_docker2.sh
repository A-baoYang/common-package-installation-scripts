sudo apt-get install -y docker.io


# ADD USER TO DOCKER GROUP
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
sudo systemctl restart docker
docker images

sudo apt update
sudo apt upgrade -y
sudo apt install nginx -y

sudo rm -rf /etc/nginx/sites-enabled/default
sudo rm -rf /etc/nginx/sites-available/default

sudo nano /etc/nginx/sites-available/<your.domain.name>

sudo ln -s /etc/nginx/sites-available/<your.domain.name> /etc/nginx/sites-enabled/
sudo nginx -t
# sudo systemctl daemon-reload
sudo service nginx restart

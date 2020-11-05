# [optional as you may have these installed]
sudo apt-get install libpcre3-dev zlib1g-dev

mkdir -p ~/temp/nginx-install
cd ~/temp/nginx-install

# download/curl/wget nginx 
wget http://nginx.org/download/nginx-1.7.9.tar.gz
tar -xvf nginx-1.7.9.tar.gz
cd nginx-1.7.9/
./configure
make
sudo make install

#copy/download/curl/wget the init script
sudo wget https://raw.githubusercontent.com/JasonGiedymin/nginx-init-ubuntu/master/nginx -O /etc/init.d/nginx
sudo chmod +x /etc/init.d/nginx

service nginx status  # to poll for current status
service nginx stop    # to stop any servers if any
service nginx start   # to start the server

#[optional] 
sudo update-rc.d -f nginx defaults

#[optional remove the upstart script]
sudo update-rc.d -f nginx remove
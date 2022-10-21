sudo apt install proftpd-*

groupadd ftpgroup

sudo cat /home/debian/proftpd_script/proftpd.conf > /etc/proftpd/proftpd.conf


cd /etc/proftpd/
sudo mkdir ssl
cd ssl/
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -out proftpd-rsa.pem -keyout proftpd-key.pem

cd /


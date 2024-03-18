# Actualizar repositorios e instalar software
sudo apt update
sudo apt install -y nginx php-fpm php-mysql mysql-server

# Configurar Nginx
sudo cp ${NGINX_CONFIG_PATH} /etc/nginx/nginx.conf
sudo systemctl restart nginx

# Configurar MySQL
# Cambiar la contraseña del usuario root a 'chmod000'
sudo mysql -e "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'chmod000';"

# Reiniciar servicios
sudo systemctl restart php-fpm
sudo systemctl restart mysql


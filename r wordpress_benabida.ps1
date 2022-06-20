docker pull mariadb
docker pull wordpress
docker pull debian
docker network create sae23_benabida
docker run --detach --name db-sae23 --env MARIADB_USER=sinwane --env MARIADB_DATABASE=sae23_db --env MARIADB_PASSWORD=boule --env MARIADB_ROOT_PASSWORD=boule --volume  C:\Users\sinwa\Documents\htmlwordpress:/var/lib/mysql -p 3306:3306 --network sae23_benabida mariadb:latest

docker pull phpmyadmin
docker run --name Phpmyadmin -d --network sae23_benabida -e PMA_HOST=db-sae23 -p 9000:80 phpmyadmin

docker run --name wordpress-BENABIDA -e "WORDPRESS_DB_USER=sinwane" -e "WORDPRESS_DB_PASSWORD=boule" -e "WORDPRESS_DB_HOST=db-sae23" -e "WORDPRESS_DB_NAME=sae23_db" -p 80:80 --volume C:\Users\sinwa\Documents\badoworpress:/var/www/html --network sae23_benabida -d wordpress:latest

docker run -ti --name symfony-BENABIDA -p 82:80 --network sae23_benabida -d debian 
docker exec -ti symfony-BENABIDA apt-get update && apt install apache2
docker exec -ti symfony-BENABIDA php7.2 php7.2-opcache libapache2-mod-php7.2 php7.2-mysql php7.2-curl php7.2-json php7.2-gd  php7.2-intl php7.2-mbstring php7.2-xml php7.2-zip php7.2-fpm php7.2-readline
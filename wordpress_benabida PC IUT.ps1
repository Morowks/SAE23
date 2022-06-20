docker pull mariadb
docker pull wordpress
docker network create sae23_benabida
docker run --detach --name db-sae23 --env MARIADB_USER=sinwane --env MARIADB_DATABASE=sae23_db --env MARIADB_PASSWORD=boule --env MARIADB_ROOT_PASSWORD=boule  -p 3306:3306 --volume  C:\Users\Administrateur\Documents\htmlwordpress:/var/lib/mysql  --network sae23_benabida mariadb:latest
docker pull phpmyadmin
docker run --detach  --name Phpmyadmin -d --network sae23_benabida -e PMA_HOST=db-sae23 -p 9000:80 phpmyadmin

docker run --name wordpress-BENABIDA -e "WORDPRESS_DB_USER=sinwane" -e "WORDPRESS_DB_PASSWORD=boule" -e "WORDPRESS_DB_HOST=db-sae23" -e "WORDPRESS_DB_NAME=sae23_db" -p 80:80 --network sae23_benabida  --volume C:\Users\Administrateur\Documents\badoworpress:/var/www/html -d wordpress:latest
cd C:\Users\Administrateur\Documents\portfolio-sae14
symfony composer update 
symfony server:start --port=8080

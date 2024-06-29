docker volume create mysql_volume
docker run -itd --name mysqldb -p 3306:3306 -v mysql_volume:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=admin -e MYSQL_DATABASE=highfive_products mysql
docker ps -a
docker cp db/mysql/my.cnf <docker-container-id>:/etc/mysql/my.cnf
docker cp db/mysql/products-structure.sql <docker-container-id>:/app/mysql/products-structure.sql
docker cp db/mysql/products.sql <docker-container-id>:/app/mysql/products.sql
docker stop <docker-container-id>
docker start <docker-container-id>

conf_path=`pwd`/config
data_path=`pwd`/store
docker run --name docker-mysql8 \
-p 3306:3306 -e MYSQL_ROOT_PASSWORD=123456 \
-v ${conf_path}/my.cnf:/etc/mysql/my.cnf \
-v ${data_path}:/var/lib/mysql \
mysql:8.0.26

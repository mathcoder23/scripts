redis_conf=`pwd`/redis.conf
redis_data=`pwd`/redis-data
echo local host redis.conf path : ${redis_conf}
echo local host redis data path : ${redis_data}
docker run -p 6379:6379 --restart=always -v ${redis_conf}:/etc/redis/redis.conf -v ${redis_data}:/data -d --name redis-6.0.6 redis:6.0.6 redis-server /etc/redis/redis.conf
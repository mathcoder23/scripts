conf_path=`pwd`/sonic.cfg
data_path=`pwd`/store
docker run --name="sonic" -d -p 1491:1491 -v ${conf_path}:/etc/sonic.cfg -v ${data_path}:/var/lib/sonic/store/ valeriansaliou/sonic:v1.3.0

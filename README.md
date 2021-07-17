# docker-redis-6.0.6
1. 拉取源码
```angular2

```
1. 安装redis
```shell
chmod +x ./install.sh
./install.sh
```
2. redis.conf 说明
```shell
在原版配置的基础下修改了以下配置
bind 0.0.0.0 #注释掉这部分，使redis可以外部访问
daemonize no#用守护线程的方式启动
requirepass 你的密码#给redis设置密码,默认不设置
appendonly yes#redis持久化　　默认是no
tcp-keepalive 300 #防止出现远程主机强迫关闭了一个现有的连接的错误 默认是300
```

3. 验证redis
```shell
# 临时创建redis客户端容器
docker run -it redis:6.0.6 /bin/bash
# 这里的h是局域网ip不能用127
redis-cli -h x.x.x.x
```

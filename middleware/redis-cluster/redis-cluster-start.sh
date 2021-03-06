#!/bin/bash

startInitRedisServer=false
createRedisCluster=false
addNode=false
startServerPort=""

function usage() {
    echo -e "redis-cluster-start provides the following features: \n"
    echo -e "Options"
    echo -e "    --start-init-server           启动初始的 redis server"
    echo -e "    --start-server <server port>  启动指定的 redis server"
    echo -e "    --create-cluster              创建集群"
    echo -e "    -h, --help                    查看帮助"
}

while [ "$1" != "" ]; do
    case $1 in
        --start-init-server    )    startInitRedisServer=true
                                    ;;
        --start-server       )      shift
                                    startServerPort="$1"
                                    ;;
        --create-cluster       )    
                                    createRedisCluster=true
                                    ;;
        -h | --help       )         usage
                                    exit 0
                                    ;;
        *                 )         usage
                                    exit 1
    esac
    shift
done

if $startInitRedisServer ; then
    redis-server 7000/redis.conf
    redis-server 7001/redis.conf

    redis-server 7002/redis.conf
    redis-server 7003/redis.conf

    redis-server 7004/redis.conf
    redis-server 7005/redis.conf
fi

if $createRedisCluster ; then
    redis-cli --cluster create 127.0.0.1:7000 127.0.0.1:7001 \
      127.0.0.1:7002 127.0.0.1:7003 127.0.0.1:7004 127.0.0.1:7005 --cluster-replicas 1
fi

if [ "$startServerPort" != "" ] 
then
    redis-server $startServerPort/redis.conf
fi
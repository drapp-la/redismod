FROM redislabs/redisearch:latest

ENTRYPOINT ["redis-server", "/etc/secrets/redis.conf"]
CMD ["--appendonly", "yes", "--loadmodule", "/usr/lib/redis/modules/redisearch.so", "--port", "10000"]

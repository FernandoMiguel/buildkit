```sh
yes | docker system prune -a

export LLB=docker-compose-without-buildkit
export DOCKER_BUILDKIT=0
export COMPOSE_DOCKER_CLI_BUILD=0

docker-compose config
time docker-compose build

docker images
```

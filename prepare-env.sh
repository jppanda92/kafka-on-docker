#!/bin/bash

git clone https://github.com/wurstmeister/kafka-docker.git
cd kafka-docker

cp ../lib/docker-compose.yml docker-compose.yml

docker-compose up -d

docker-compose ps



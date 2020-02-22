# kafka-on-docker
Deploying a multi-node Kafka cluster using docker-compose

Problem Statement : Setting up a 3 node Kafka and 3 node Zookeeper cluster on Docker containers, with logs stored in persistent volumes. 

#### How to use it.

1) Clone the repository.

  `git clone https://github.com/jppanda92/kafka-on-docker.git`

2) Run the script prepare-env.sh, to build Kafka Docker image and spin up containers.

  `sh prepare-env.sh`

3) To grep a Kafka container node and exec into it from Docker Host machine, run the following commands,

  `docker ps | grep docker_kafka | cut -d' ' -f1`
  
  Will return the docker process ID of the Kafka Docker running so you can acces it

  `docker exec -i -t -u root <container ID/name> /bin/bash`
  
 4) Create a topic
 
  `$KAFKA_HOME/bin/kafka-topics.sh --create --partitions 4 --bootstrap-server kafka:9092 --topic test`
  
 5) Create a producer
 
  `$KAFKA_HOME/bin/kafka-console-producer.sh --broker-list kafka:9092 --topic=test version: '2'`
  
 6) Create a consumer
 
  `$KAFKA_HOME/bin/kafka-console-consumer.sh --from-beginning --bootstrap-server kafka:9092 --topic=test`
  
 ### Scope: 
 
 Consuming/Producing through Python scripts running on the host machine. 
 
### Note: 
  
  Logs can be found in the docker volume : kafka-docker_logs-volume
  
> Fin
  

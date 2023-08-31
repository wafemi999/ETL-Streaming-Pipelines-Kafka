#!/bin/bash

wget https://archive.apache.org/dist/kafka/2.8.0/kafka_2.12-2.8.0.tgz


tar -xzf kafka_2.12-2.8.0.tgz

start_mysql

mysql --host=127.0.0.1 --port=3306 --user=root --password=Mjk0NDQtcnNhbm5h

create database tolldata;

use tolldata;

create table livetolldata(timestamp datetime,vehicle_id int,vehicle_type char(15),toll_plaza_id smallint);

exit

python3 -m pip install kafka-python

python3 -m pip install mysql-connector-python==8.0.31


#start zookeeper
cd kafka_2.12-2.8.0
 bin/zookeeper-server-start.sh config/zookeeper.properties

#start Broker service
cd kafka_2.12-2.8.0
 bin/kafka-server-start.sh config/server.properties


# create toll
cd kafka_2.12-2.8.0
bin/kafka-topics.sh --create --topic toll --bootstrap-server localhost:9092

#configure tollPlaza program to stream to topic

#configure consumer to stream to DB

#check DB for data
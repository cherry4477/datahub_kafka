#!/bin/sh

export KAFKA_HOME=/kafka

$KAFKA_HOME/bin/zookeeper-server-start.sh config/zookeeper.properties &

$KAFKA_HOME/bin/kafka-server-start.sh config/server.properties


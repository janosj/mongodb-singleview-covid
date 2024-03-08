#!/usr/bin/env bash

source demo.conf

echo
echo "Checking for kafka-python package..."
pip3 install kafka-python

echo

KAFKA_TOPIC=$KAFKA_TOPIC python3 confluentDataProducer.py


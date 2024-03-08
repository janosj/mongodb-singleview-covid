## Confluent Cloud and MongoDB Atlas Streams

This demo originally used MongoDB's Kafka Connector its Quick Start Sandbox. Another approach is to publish Kafka messages to Confluent, and use Atlas Streams to ingest data from there into Atlas. 

## Prerequisites

### 1. Launch a Kafka cluster using Confluent Cloud

Messages will be published to this cluster using a Kafka producer.

### 2. Launch an MongoDB Atlas cluster

Data will be ingested from Confluent into this Atlas cluster using Atlas Streams.

### 3. Configure Atlas Streams

A stream processing instance needs to be created and started. Configure two connections for the source (Confluent Cloud) and sink (your Atlas cluster). See "Get Started with Atlas Stream Processing [here](https://www.mongodb.com/docs/atlas/atlas-sp/tutorial/).

### 4. Configure your project settings

Confluent settings are specified in `client.properties`. Additional settings are in `demo.conf`. 

### 5. Start the data feed

With Kafka deployed to the cloud and Atlas Streams configured to ingest messages, the only thing left to do locally is start the data feed. As before, data in Atlas can be analyzed using MongoDB Compass and MongoDB Charts. 

### 6. Tear down your environment

Remember to tear down your Confluent and Atlas cloud resources when you're finished.



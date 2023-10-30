# Self-Service Data Access (Single View)

A full video of this demonstration is available here: <http://bit.ly/self-service-data-access-with-mongodb>

Provide your internal and external customers with self-service access to wide-ranging data sets by creating a single-view system with MongoDB. A reference architecture for such a system appears below, with the demonstration components circled in blue. 

<img src="images/demo-architecture-and-components.png" alt="Demo Architecture and Components" width="650"/>

Data is streamed in from the source systems (a json data set for this demo) using the MongoDB Kafka Connector. The flexible MongoDB data model accommodates COVID data being reported in three different formats. This data can then be analyzed in any number of ways, including MongoDB Compass and MongoDB Charts (shown below). Note that analysts have access to both the subset of standardized data as well as the source-specific details that are unique to that data provider.

<img src="images/screenshot-charts.png" alt="Screenshot - MongoDB Charts" width="650"/>

## Prerequisites

Docker Desktop

The MongoDB Kafka Connector Quick Start Sandbox. See [here](https://www.mongodb.com/docs/kafka-connector/current/quick-start/) for instructions on downloading this Sandbox. 

Optional: MongoDB Atlas. In the course of this demo, data published to Kafka will be persisted in a MongoDB cluster. The Sandbox includes a MongoDB cluster that can be used for this purpose, but by using Atlas, you will additionally be able to visualize this data using MongoDB Charts (as featured in the demo). 

Optional: MongoDB Compass. You need some way to look at the data that is written to Mongo. Compass is a great option. You could also use the MongoDB shell, or the Data Explorer within the Atlas UI. 

## Running the Demo

### 1. Download the MongoDB Kafka Connector Quickstart sandbox. 

See [here](https://www.mongodb.com/docs/kafka-connector/current/quick-start/).

### 2. Launch your MongoDB Atlas cluster (optional).

If using Atlas, make sure your cluster is up and running. Alternatively, you can use the MongoDB instance packaged in the Quickstart sandbox (but you won't be able to run the Charts portion of the demo).

### 3. Run the Scripts.

Run the scripts in order to:

1: Start the MongoDB Kafka Connector Quickstart sandbox.

2: Add the MongoDB sink connector.

3: Start the data feed. The data feed reads data from a JSON file and publishes it to a Kafka topic. From there, the connector will propogate the events to the configured MongoDB cluster.

4: Examine the data using the MongoDB Compass. Review the video for notable points.. 

5: Examine the data using MongoDB Charts (only available in MongoDB Atlas). The video walks through the chart creation process.




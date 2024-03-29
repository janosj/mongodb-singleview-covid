# Self-Service Data Access (Single View)

A full video of this demonstration is available here: <http://bit.ly/self-service-data-access-with-mongodb>

Provide your internal and external customers with self-service access to wide-ranging data sets by creating a single-view system with MongoDB. A reference architecture for such a system appears below, with the demonstration components circled in blue. 

<img src="images/demo-architecture-and-components.png" alt="Demo Architecture and Components" width="650"/>

Data is streamed in from the source systems (a json data set for this demo) using the MongoDB Kafka Connector. The flexible MongoDB data model accommodates COVID data being reported in three different formats. This data can then be analyzed in any number of ways, including MongoDB Compass and MongoDB Charts (shown below). Note that analysts have access to both the subset of standardized data as well as the source-specific details that are unique to that data provider.

<img src="images/screenshot-charts.png" alt="Screenshot - MongoDB Charts" width="650"/>

## Prerequisites

**Docker Desktop** and the **MongoDB Kafka Connector Quick Start Sandbox** (see [here](https://www.mongodb.com/docs/kafka-connector/current/quick-start/) for download instructions). **Or**, you can host your Kafka cluster in Confluent Cloud - see the *confluent-cloud* folder for additional instructions. 

**Python**. The Kafka data producer is written in Python. 

Optional: **MongoDB Atlas**. In the course of this demo, data published to Kafka will be persisted in a MongoDB cluster. The Sandbox includes a MongoDB cluster that can be used for this purpose, but by using Atlas you will additionally be able to visualize the data using MongoDB Charts (as featured in the demo). 

Optional: **MongoDB Compass**. You need some way to look at the data that is written to Mongo. Compass is a great option. Alternatively, you could use the Data Explorer within the Atlas UI, or even the MongoDB Shell.

## Running the Demo

Refer to the confluent-cloud folder if using that approach. 

### 1. Download the Sandbox

Intructions for downloading the MongoDB Kafka Connector Quickstart Sandbox can be found [here](https://www.mongodb.com/docs/kafka-connector/current/quick-start/).

### 2. Launch your MongoDB Atlas cluster (optional)

If using Atlas, make sure your cluster is up and running. Alternatively, you can use the MongoDB instance packaged in the Sandbox (but you won't be able to run the Charts portion of the demo).

### 3. Configure your project settings

Open the *demo.conf* file and adjust your MongoDB connect string and the location of the downloaded sandbox. The remaining settings can be left as provided.

### 4. Run the Scripts

Run the scripts in order to:

1. Start the MongoDB Kafka Connector Quickstart sandbox.

2. Add the MongoDB sink connector.

3. Start the data feed. The data feed reads data from a JSON file and publishes it to a Kafka topic. From there, the connector will propogate the events to the configured MongoDB sink cluster.

4. Examine the data using the MongoDB Compass. Review the video for notable points.

5. Examine the data using MongoDB Charts (only available in MongoDB Atlas). The video walks through the chart creation process.

6. Tear down your environment. Your Atlas cluster must be brought down separately (if desired).


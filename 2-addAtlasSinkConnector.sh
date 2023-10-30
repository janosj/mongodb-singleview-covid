# Adds a MongoDB Sink Connector using the Kafka Connect REST API
# (the API for managing connectors).

# To access this API from your local machine requires port 8083 
# (the default Kafka Connect port) to be opened.
# The Quick Start Sandbox isn't normally configured to do this 
# (it has you run the command from inside the Docker container),
# but the startKafkaSandbox script provided here modifies the 
# docker-compose yaml file automatically to open the port.

source demo.conf

# These settings differ from the Quick Start Sandbox,
# which uses the change data capture handler.
# This demo does not insert data into Mongo directly,
# it uses a Kafka producer instead.

curl -X POST \
     -H "Content-Type: application/json" \
     --data '
     {"name": "mongo-sink",
      "config": {
         "connector.class":"com.mongodb.kafka.connect.MongoSinkConnector",
         "connection.uri":"'"$MONGODB_URI"'",
         "database":"'"$DB"'",
         "collection":"'"$COLLECTION"'",
         "topics":"'"$KAFKA_TOPIC"'",
         "key.converter":"org.apache.kafka.connect.json.JsonConverter",
         "key.converter.schemas.enable":"false",
         "value.converter":"org.apache.kafka.connect.json.JsonConverter",
         "value.converter.schemas.enable":"false"
         }
     }
     ' \
     http://localhost:8083/connectors -w "\n"

echo
echo "To verify creation of the Sink Connector:"
echo "curl -X GET http://localhost:8083/connectors"
echo

echo "To delete the connector:"
echo "curl -X DELETE http://localhost:8083/connectors/mongo-sink"
echo



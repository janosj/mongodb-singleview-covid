source demo.conf

cd $SANDBOX_HOME/kafka-edu/docs-examples/mongodb-kafka-base/

yamlFile="docker-compose.yml"

# Check to see if the Kafka Connect port is exposed.
# We need it to add the Atlas sink via the Connect REST API.
if ! grep -q "8083:8083" "$yamlFile" ; then
  echo "Modifying $yamlFile to expose port 8083 of Kafka Connect container."
  cp $yamlFile $yamlFile.ORIGINAL
  sed -i '' 's/35000:35000\"/&\n      - \"8083:8083\"/' $yamlFile
fi

echo "Launching Kafka Connector sandbox..."

docker-compose -p mongo-kafka up -d --force-recreate

# TO-DO: add a wait command here, because Connect isn't up immediately.


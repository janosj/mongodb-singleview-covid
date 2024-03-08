from confluent_kafka import Producer, Consumer
import os
from time import sleep
from json import dumps

topic = os.environ["KAFKA_TOPIC"]
print("Kafka Topic: " + topic)
print()

def read_config():
  # reads the client configuration from client.properties
  # and returns it as a key-value map
  config = {}
  with open("client.properties") as fh:
    for line in fh:
      line = line.strip()
      if len(line) != 0 and line[0] != "#":
        parameter, value = line.strip().split('=', 1)
        config[parameter] = value.strip()
  return config

def main():
  # producer and consumer code here
  config = read_config()
  #topic = "COVID"
  
  # creates a new producer instance
  producer = Producer(config)

  inputPath = "../"
  inputFileName = "covidDataset.json"
  inputFile = open(inputPath + inputFileName)

  #load json from file
  lines = []
  while True:
      line = inputFile.readline()
      if not line: break
      line = line.strip()
      print(line + "\n")
      producer.produce(topic, value=line)
      producer.flush()
      sleep(0.8)

  print("Done. Reached end of input file.")


  # produces a sample message
  #key = "key"
  #value = "value"
  #producer.produce(topic, key=key, value=value)
  #print(f"Produced message to topic {topic}: key = {key:12} value = {value:12}")
  
  # send any outstanding or buffered messages to the Kafka broker
  producer.flush()


main()


# ETL-Streaming-Pipelines-Kafka:
Creating Streaming Data Pipelines using Kafka.

#  Data Pipeline architecture:

[Toll Plaza] --> Kafka --> [Kafka Consumer (Python)] --> MySQL.

# Description::

Aim is to de-congest the national highways by analyzing the road traffic data from different toll plazas. As the vehicle passes the toll plaza, the vehicle’s data like vehicle_id,vehicle_type,toll_plaza_id and timestamp are streamed to Kafka. In this project we created a data pipe line that collects the streaming data and loads it into a database.


# Process::

* Creat MySQL Database server.
* Create a table to hold the toll data. see (configure_lab).
* Start the Kafka server.
* Install the Kafka python driver.
* Install the MySQL python driver.
* Create a topic to hold the toll data in kafka.
* Configure  toll plaza program to stream to created topic. (toll_plaza_device)
* Create streaming data consumer. (see data_consumer)
* configure the consumer program to write into a MySQL database table.
* Refresh tle o confirm data streaming.

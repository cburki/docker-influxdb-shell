Summary
-------

InfluxDB shell image that allow to execute the influx client shell to interact with a InfluxBD server.


Build
-----

To create this image, execute the following command in the docker-influxdb-shell folder.

    docker build -t cburki/influxdb-shell .


Run
---

When you run this image you could specify the argument of the influx shell tool. Here is an example giving the help argument.

    docker run --rm -it cburki/influxdb-shell -help
    
    Usage of influx:
      -version
           Display the version and exit.
      -host 'host name'
           Host to connect to.
      -port 'port #'
           Port to connect to.
      -database 'database name'
           Database to connect to the server.
      -password 'password'
          Password to connect to the server.  Leaving blank will prompt for password (--password '')
      -username 'username'
           Username to connect to the server.
      -dump
           Dump the contents of the given database to stdout.
      -execute 'command'
           Execute command and quit.
      -format 'json|csv|column'
           Format specifies the format of the server responses:  json, csv, or column.
      -pretty
           Turns on pretty print for the json format.
    
    Examples:
    
        # Use influx in a non-interactive mode to query the database "metrics" and pretty print json
        $ influx -database 'metrics' -execute 'select * from cpu' -format 'json' -pretty
    
        # Dumping out your data
        $ influx  -database 'metrics' -dump
    
        # Connect to a specific database on startup and set database context
        $ influx -database 'metrics' -host 'localhost' -port '8086'


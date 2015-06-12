FROM debian:jessie
MAINTAINER Christophe Burki, christophe.burki@gmail.com

ENV INFLUXDB_VERSION 0.9.0

# Install system requirements
RUN apt-get update && apt-get install -y \
    curl

# Install influxdb
RUN curl http://get.influxdb.org/influxdb_${INFLUXDB_VERSION}_amd64.deb -o /tmp/influxdb_amd64.deb
RUN dpkg -i /tmp/influxdb_amd64.deb

ENTRYPOINT ["/opt/influxdb/influx"]

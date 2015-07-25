FROM debian:jessie
MAINTAINER Christophe Burki, christophe.burki@gmail.com

ENV INFLUXDB_VERSION 0.9.2

# Install system requirements
RUN apt-get update && apt-get install -y \
    curl

# Install influxdb
RUN curl https://s3.amazonaws.com/influxdb/influxdb_${INFLUXDB_VERSION}_amd64.deb -o /tmp/influxdb_amd64.deb
RUN dpkg -i /tmp/influxdb_amd64.deb

ENTRYPOINT ["/opt/influxdb/influx"]

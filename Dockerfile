FROM debian:jessie
MAINTAINER Christophe Burki, christophe.burki@gmail.com

ENV INFLUXDB_VERSION 0.9.6

# Install influxdb
ADD https://s3.amazonaws.com/influxdb/influxdb_${INFLUXDB_VERSION}_amd64.deb /tmp/influxdb_amd64.deb
RUN dpkg -i /tmp/influxdb_amd64.deb

ENTRYPOINT ["/usr/bin/influx"]

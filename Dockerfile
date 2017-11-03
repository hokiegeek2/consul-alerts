FROM golang
MAINTAINER John Yost hokiegeek2@gmail.com

ADD consul-exec /usr/local/sbin/consul
ADD consul-alerts /usr/local/sbin

EXPOSE 9000
CMD []
ENTRYPOINT [ "consul-alerts", "--alert-addr=0.0.0.0:9000" ]

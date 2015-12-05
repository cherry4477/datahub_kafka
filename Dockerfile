FROM daocloud/ci-golang:1.4

RUN apt-get update && apt-get upgrade -q -y
RUN apt-get install -q -y \
    scala

RUN mkdir /kafka
COPY ./kafka /kafka
WORKDIR /kafka

EXPOSE 2181 9092
ENTRYPOINT ["/kafka/start.sh"]

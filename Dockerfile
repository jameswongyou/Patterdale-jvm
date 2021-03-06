FROM openjdk:8u131-jdk-alpine

MAINTAINER Thomas Heslin <tjheslin1@gmail.com>

RUN mkdir /app && mkdir /config
WORKDIR /app

COPY build/libs/patterdale-jvm-all.jar .

ENTRYPOINT ["java", "-jar", "-Dconfig.file=/config/patterdale.yml", "patterdale-jvm-all.jar"]

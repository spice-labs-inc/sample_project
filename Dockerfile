FROM amazoncorretto:21-alpine3.22
RUN mkdir -p /usr/local/jars

COPY ./target/simple-shade.jar /usr/local/jars/

ENTRYPOINT ["java", "-jar", "/usr/local/jars/simple-shade.jar"]



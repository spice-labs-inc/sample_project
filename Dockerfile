FROM eclipse-temurin:21-jre-alpine-3.20
RUN mkdir -p /usr/local/jars

COPY ./target/simple-shade.jar /usr/local/jars/

ENTRYPOINT ["java", "-jar", "/usr/local/jars/simple-shade.jar"]



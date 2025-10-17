FROM eclipse-temurin:17-jdk-alpine

RUN mkdir -p /app/logs

RUN chmod 777 /app/logs

COPY ./build/libs/*SNAPSHOT.jar project.jar

ENTRYPOINT ["sh", "-c", "java -jar project.jar >> /app/logs/was_log.log 2>&1"]
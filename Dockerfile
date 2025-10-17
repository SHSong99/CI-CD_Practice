FROM eclipse-temurin:17-jdk-alpine

COPY ./build/libs/*SNAPSHOT.jar project.jar

ENTRYPOINT ["sh", "-c", "java -jar project.jar >> /app/logs/was_log.log 2>&1"]
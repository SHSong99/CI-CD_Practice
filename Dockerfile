FROM eclipse-temurin:17-jdk-alpine

RUN mkdir -p /app/logs

COPY ./build/libs/*SNAPSHOT.jar project.jar

ENTRYPOINT ["java", "-jar", "project.jar"]
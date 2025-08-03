# Stage 1: Build the application using Maven
FROM maven:3.9.6-eclipse-temurin-17

WORKDIR /app


COPY target/AI_ChatBot-0.0.1-SNAPSHOT.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]

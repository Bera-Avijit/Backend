# Stage 1: Build the application using Maven
FROM meclipse-temurin:17-jdk-alpine

WORKDIR /app


COPY target/AI_ChatBot-0.0.1-SNAPSHOT.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]

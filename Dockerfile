# Base image with Java 21 runtime
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy built jar into the container
COPY target/*.jar app.jar

# Expose the Spring Boot port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]
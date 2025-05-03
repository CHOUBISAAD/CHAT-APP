# Use an official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file (adjust the name based on your actual JAR file)
COPY target/*.jar app.jar

# Expose port 8080 (Spring Boot default)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

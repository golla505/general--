# Use an official OpenJDK image as a base
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
ADD  target/docker_file.jar docker_file.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8082

# Command to run the application
CMD ["java", "-jar", "/app/docker_file.jar"]

# Use the official Maven image to build the application
FROM maven:3.8.5-openjdk-17 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml file to the working directory
COPY pom.xml .

# Copy the source code into the working directory
COPY src ./src

# Copy JSON files into the container
COPY src/main/resources/JSON /app/src/main/resources/JSON

# Build the application, skipping tests for a faster build
RUN mvn clean package -DskipTests

# Use the official OpenJDK image to run the application
FROM openjdk:17-jdk-slim

# Copy the built jar file from the build stage into the new image
COPY --from=build /app/target/*.jar /app/app.jar

# Create necessary directories
RUN mkdir -p /app/src/main/resources/output
RUN mkdir -p /app/src/main/resources/JSON

# Set the command to run the application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

# Start with a base image containing Java runtime
FROM openjdk:11

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Build the application using Maven
RUN mvn clean install

# Expose port 8080 for the application
EXPOSE 8080

# Set the startup command to run the application
CMD ["java", "-jar", "target/my-app.jar"]

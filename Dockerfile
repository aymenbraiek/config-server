# Use an OpenJDK Runtime as a parent image
FROM openjdk:8-jre-alpine
# Add Maintainer Info
LABEL maintainer="lnibrass@gmail.com"
# Define environment variables
ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS \
JAVA_OPTS=""
# Set the working directory to /app
WORKDIR /app
# Copy the executable into the container at /app
ADD target/configserver-1.0.0-SNAPSHOT.jar app.jar
# Make port 8080 available to the world outside this container
EXPOSE 8888
# Run app.jar when the container launches
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/app.jar"]
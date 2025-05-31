FROM registry.access.redhat.com/ubi8/openjdk-17-runtime

RUN mkdir /opt/server
WORKDIR /opt/server
ADD target/demo-0.0.1-SNAPSHOT.jar /opt/server/

# Specify the command to run the Spring Boot app when the container starts
ENTRYPOINT ["java", "-jar", "/opt/server/demo-0.0.1-SNAPSHOT.jar"]

# Expose the port the app runs on
EXPOSE 8080

LABEL summary="demo application"
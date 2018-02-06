FROM openjdk:8-jdk-alpine

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/usr/share/myservice/app.jar"]

# Add Maven dependencies (not shaded into the artifact; Docker-cached)
# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/myservice/app.jar

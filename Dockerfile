FROM openjdk:11
ARG JAR_FILE=apigateway-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} apigateway.jar
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod","/apigateway.jar"]

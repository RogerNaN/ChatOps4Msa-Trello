FROM openjdk:17
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} TrelloService.jar
COPY src/main/resources/application.properties application.properties
ENTRYPOINT ["java","-jar","/TrelloService.jar"]


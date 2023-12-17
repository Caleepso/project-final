FROM openjdk:17
VOLUME /tmp
LABEL authors="Caleepso"

ADD target/jira-1.0.jar jira-1.0.jar
ADD resources ./resources

ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "/jira-1.0.jar"]
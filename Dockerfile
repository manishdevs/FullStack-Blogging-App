FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/

RUN sh -c 'mv /usr/src/app/*.jar /usr/src/app/app.jar'

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar"]


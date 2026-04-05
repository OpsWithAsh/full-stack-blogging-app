FROM eclipse-temurin:17-jdk-alpine

EXPOSE 8080

ENV APP_HOME=/usr/src/app

WORKDIR $APP_HOME

COPY target/*.jar ./

RUN mv $(ls *.jar | grep -v original) app.jar

ENTRYPOINT ["java","-jar","app.jar"]

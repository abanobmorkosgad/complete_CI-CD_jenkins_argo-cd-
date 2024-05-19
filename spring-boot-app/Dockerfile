FROM adoptopenjdk/openjdk11:alpine-jre

WORKDIR /opt/app

COPY target/spring-boot-web.jar .

# This should not be changed
ENTRYPOINT ["java","-jar","spring-boot-web.jar"]
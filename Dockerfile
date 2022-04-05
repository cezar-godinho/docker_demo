FROM openjdk:8-jre-alpine


## Turma A:
## Cezar Godinho
## Cintia Fortes
## Lucas Castro
## Rodrigo Bueno

## Acessar a api localhost:8080/

LABEL maintainer="Turma A - Ufscar"
LABEL description="Trabalho Docker - Api Java Demo"

ENV SERVER_PORT=8080

WORKDIR /app

COPY target/docker_demo.jar /app/docker_demo.jar

ENTRYPOINT ["java", "-jar", "docker_demo.jar"]

EXPOSE ${SERVER_PORT}
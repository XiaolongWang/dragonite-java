FROM openjdk:slim

EXPOSE 5233 5234 1080

WORKDIR /code

ADD docker-entrypoint.sh ./
ADD dragonite-*/build/distributions/*.tar ./

ENTRYPOINT [ "/bin/bash", "docker-entrypoint.sh" ]

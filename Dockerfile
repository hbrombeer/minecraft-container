FROM openjdk:17-jdk-slim

WORKDIR /minecraft

COPY server.properties /minecraft/server.properties
COPY ops.json /minecraft/ops.json

RUN apt-get update && \
    apt-get install -y wget && \
    wget -O paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.4/builds/100/downloads/paper-1.21.4-100.jar && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN echo "eula=true" > /minecraft/eula.txt

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 25565

ENTRYPOINT ["/entrypoint.sh"]

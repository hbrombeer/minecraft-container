#!/bin/bash

if [ -z "$REGION" ]; then
  REGION="Unknown Region"
fi

MOTD="§6Bunny Magic Containers - $REGION"

sed -i '36s|^motd=.*|motd='"$MOTD"'|' /minecraft/server.properties

env

exec java -Xmx1G -Xms1G -jar paper.jar nogui

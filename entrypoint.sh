#!/bin/bash
REGION=${REGION:-"Unknown Region"}
MOTD="\u00a76Bunny Magic Containers - $REGION"

sed -i '36s|^motd=.*|motd='"$MOTD"'|' /minecraft/server.properties

exec java -Xmx1G -Xms1G -jar paper.jar nogui

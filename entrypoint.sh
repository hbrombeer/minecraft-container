#!/bin/bash

if [ -z "$REGION" ]; then
  REGION="Unknown Region"
fi

MOTD="\u00a76Bunny Magic Containers - $REGION"

sed -i '36s|^motd=.*|motd='"$MOTD"'|' /minecraft/server.properties

echo "Bunny Variables:"
echo "APPID: ${APPID:-Not Set}"
echo "PODID: ${PODID:-Not Set}"
echo "REGION: ${REGION}"
echo "PUBLIC_ENDPOINTS: ${PUBLIC_ENDPOINTS:-Not Set}"
echo "PODIP: ${PODIP:-Not Set}"
echo "HOSTIP: ${HOSTIP:-Not Set}"
echo "ZONE: ${ZONE:-Not Set}"

exec java -Xmx1G -Xms1G -jar paper.jar nogui

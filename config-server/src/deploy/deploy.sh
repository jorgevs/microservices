#!/bin/bash

APP_BASE_DIR=/data/microservices/config-server
DEPLOYMENT_FILE=config-server.jar
STARTUP_SCRIPT=startup.sh
DEPLOYMENT_FOLDER=/home/jorgevs/deploy/

# shutdown the application first
#curl -X POST http://localhost:8091/manage/shutdown -H "authorization: Basic $1" -H 'cache-control: no-cache'
curl -X POST 'http://localhost:8001/actuator/shutdown'

# wait 15 seconds
echo 'sleep 15 seconds'
sleep 15s

# copy the jar file and the startup script
cp ${DEPLOYMENT_FOLDER}/${DEPLOYMENT_FILE} ${APP_BASE_DIR}/bin
cp ${DEPLOYMENT_FOLDER}/${STARTUP_SCRIPT} ${APP_BASE_DIR}/bin

chmod +x ${APP_BASE_DIR}/bin/${STARTUP_SCRIPT}

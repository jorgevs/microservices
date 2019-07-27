#!/bin/bash

#$1 githubUser
#$2 githubPass
#$3 configUser
#$4 configPass
#$5 propKey

APP_NAME=config-server
APP_BASE_DIR=/data/microREST/${APP_NAME}
DEPLOYMENT_FILE=${APP_NAME}.jar
STARTUP_SCRIPT=startup.sh
DEPLOYMENT_FOLDER=/home/jorgevs/deploy/${APP_NAME}

# shutdown the application first
curl -X POST 'http://localhost:9000/microREST/v1/actuator/shutdown' -H "authorization: Basic am9yZ2V2czpqb3JnZXZzcHdk" -H 'cache-control: no-cache'

# wait 15 seconds
echo 'sleep 15 seconds'
sleep 15s

# copy the jar file and the startup script
cp ${DEPLOYMENT_FOLDER}/${DEPLOYMENT_FILE} ${APP_BASE_DIR}/bin
cp ${DEPLOYMENT_FOLDER}/${STARTUP_SCRIPT} ${APP_BASE_DIR}/bin

chmod +x ${APP_BASE_DIR}/bin/${STARTUP_SCRIPT}
${APP_BASE_DIR}/bin/${STARTUP_SCRIPT} $1 $2 $3 $4 $5

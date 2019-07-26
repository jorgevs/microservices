#!/bin/bash

#$1 configUser
#$2 configPass
#$3 configURI
#$4 profile
#$5 propKey

APP_NAME=config-client
APP_BASE_DIR=/data/microREST/${APP_NAME}
DEPLOYMENT_FILE=${APP_NAME}.jar
JAVA_HOME=/data/java/

nohup $JAVA_HOME/bin/java -Xmx256m -Xss256k -DconfigUser=$1 -DconfigPass=$2 -DconfigURI=$3 -Dprofile=$4 -DpropKey=$5 -Dapp.home=${APP_BASE_DIR} -jar ${APP_BASE_DIR}/bin/${DEPLOYMENT_FILE} > ${APP_BASE_DIR}/logs/${APP_NAME}.log 2>&1 &

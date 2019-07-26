#!/bin/bash

#$1 githubUser
#$2 githubPass
#$3 configUser
#$4 configPass
#$5 propKey

APP_BASE_DIR=/data/microREST/config-server
DEPLOYMENT_FILE=config-server.jar
JAVA_HOME=/data/java/

nohup $JAVA_HOME/bin/java -Xmx256m -Xss256k -DgithubUser=$1 -DgithubPass=$2 -DconfigUser=$3 -DconfigPass=$4 -DpropKey=$5 -Dapp.home=${APP_BASE_DIR} -jar ${APP_BASE_DIR}/bin/${DEPLOYMENT_FILE} > ${APP_BASE_DIR}/logs/config-server.log 2>&1 &

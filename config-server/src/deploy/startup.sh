#!/bin/bash

#$1 configUser
#$2 configPass
#$3 configURI
#$4 profile
#$5 propKey
#$6 githubUser
#$7 githubPass

APP_BASE_DIR=/data/microREST/config-server
DEPLOYMENT_FILE=config-server.jar
JAVA_HOME=/data/java/

nohup $JAVA_HOME/bin/java -Xmx256m -Xss256k -DconfigUser=$1 -DconfigPass=$2 -DconfigURI=$3 -Dprofile=$4 -DpropKey=$5 -DgithubUser=$6 -DgithubPass=$7 -jar ${APP_BASE_DIR}/bin/${DEPLOYMENT_FILE} > ${APP_BASE_DIR}/logs/config-server.log 2>&1 &

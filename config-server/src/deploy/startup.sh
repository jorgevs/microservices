#!/bin/bash

APP_BASE_DIR=/data/microservices/config-server
DEPLOYMENT_FILE=config-server.jar

JAVA_HOME=/data/java/

#nohup $JAVA_HOME/bin/java -Xmx256m -Xss256k -DpropKey=$1 -Dprofile=$2 -DconfigUser=$3 -DconfigPass=$4 -DconfigURI="http://$5:8091/" -DserverUser=$6 -DserverPassword=$7 -jar ${APP_BASE_DIR}/bin/${DEPLOYMENT_FILE} > ${APP_BASE_DIR}/logs/config-server.log 2>&1 &
nohup $JAVA_HOME/bin/java -Xmx256m -Xss256k -configUserName=$1 -configPassword=$2 -configURI=$3 -configProfile=$4 -configEncKey=$5 -jar ${APP_BASE_DIR}/bin/${DEPLOYMENT_FILE} > ${APP_BASE_DIR}/logs/config-server.log 2>&1 &
#!/bin/bash
CONFIG_FILE=$PWD/config.conf
if [ ! -f $CONFIG_FILE ]
then
    echo '********************************************'
    echo '* can not load config file :'$CONFIG_FILE
    echo '********************************************'
    exit
fi
. $CONFIG_FILE

if [ ! -f 'docker-compose.yml' ]
then
    echo '********************************************'
    echo "* you must run 'make setup' first"
    echo '********************************************'
    exit
fi



echo "Wellcome to Yii2 installation Dockerize"
echo "Auther Amir Mohsen Asaran <admin@mihanmail.com>"
echo "*********************************************"
echo "starting Docker-compose up ..."
echo "*********************************************"
docker-compose up -d --build
echo "*********************************************"
echo "docker mashin started successfull."
echo "*********************************************"
docker exec  $WEB_CONTAINER_NAME chmod +x /install.sh
docker exec  $WEB_CONTAINER_NAME /bin/sh install.sh


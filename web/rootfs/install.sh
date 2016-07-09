#!/bin/bash
if [ -e "/var/www/composer.json" ]; then
    echo "skip installation and running composer install"
    echo "*********************************************"
    composer global require "fxp/composer-asset-plugin:^1.2.0"
    cd /var/www/ && composer install 
else
    echo "Updating php composer ...."
    echo "*********************************************"
    composer global require "fxp/composer-asset-plugin:^1.2.0"
    rm -rf /var/www/*
    echo "*********************************************"
    echo "updating composer successfull."
    echo "*********************************************"
    echo "starting to pull yii2 app advanced last version ..."
    echo "*********************************************"
    composer create-project --prefer-dist yiisoft/yii2-app-advanced /var/www
    echo "*********************************************"
    echo "pulling Yii2 app advanced successfull."
    echo "*********************************************"
fi



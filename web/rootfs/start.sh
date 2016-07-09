#!/bin/bash

#Checking for Site Name
if [[ ! -z ${FRONTEND_SITE_NAME} ]]; then
        sed -i "s/_FRONTEND_SITE_NAME_/${FRONTEND_SITE_NAME}/" /etc/nginx/conf.d/frontend.conf
else 
	sed -i "s/_FRONTEND_SITE_NAME_/localhost/" /etc/nginx/conf.d/fronetend.conf
fi

if [[ ! -z ${BACKEND_SITE_NAME} ]]; then
        sed -i "s/_BACKEND_SITE_NAME_/${BACKEND_SITE_NAME}/" /etc/nginx/conf.d/backend.conf
else
        sed -i "s/_BACKEND_SITE_NAME_/localhost/" /etc/nginx/conf.d/backend.conf
fi

if [[ ! -z ${SITE_MOOD} ]]; then
	SITE_MOOD=$SITE_MODE
else
	SITE_MODE='Production'
fi


composer global require "fxp/composer-asset-plugin:~1.1.1" && composer create-project --prefer-dist yiisoft/yii2-app-advanced /var/www && php7 /var/www/init --env=$SITE_MODE --overwrite=All

/usr/bin/supervisord -n

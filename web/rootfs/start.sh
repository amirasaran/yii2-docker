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


/usr/bin/supervisord -n

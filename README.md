# YII2 advanced dockerize

# docker mashins
  - percona (mysql)
  - nginx whit php-fpm
  - redis (comming soon)
  - mongo (comming soon)

# How to install
1- git clone from repository
```sh
$ git clone 
```
2- set your site default config ``config.conf``
```sh
#!/bin/bash
## Nginx config ##
FRONTEND_SITE_NAME="frontend.local"
BACKEND_SITE_NAME="backend.local"
FRONTEND_ROOT=\/var\/www\/frontend\/web
BACKEND_ROOT=\/var\/www\/backend\/web
SITE_ROOT=\/var\/www/\

## Site Http port ##
HTTP_PORT=8082

## Storing data folder ##
APP_WEB_FOLDER=$PWD/app/web
APP_MYSQL_FOLDER=$PWD/app/mysql
SHARING_FOLDER=$PWD/app/share


## MYSQL Config ###
MYSQL_ROOT_PASSWORD=PassWord
MYSQL_DB_NAME=yii2advanced
MYSQL_DB_USER=yii2
MYSQL_DB_PASS=123456

## CONTAINERS CONFIG ##
WEB_CONTAINER_NAME="php_nginx"
MYSQL_CONTAINER_NAME="prcona_mysql"

```

3- run `make setup`
```sh
$ make setup
```

4- run `make run`
```sh
$ make run
```

your project now setup and configure . 

# Customize Your mashin 
  - comming soon ...

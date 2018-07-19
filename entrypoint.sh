#!/bin/sh

[[ -z "$PAGE_UUID" ]] && { echo "Parameter PAGE_UUID not defined!" ; exit 1; }
NGINX_DEFAULT_CONF=/etc/nginx/conf.d/default.conf

cp -f $NGINX_DEFAULT_CONF.tmp $NGINX_DEFAULT_CONF
sed -i "s/{{PAGE_UUID}}/$PAGE_UUID/g" $NGINX_DEFAULT_CONF
nginx -g "daemon off;"
#!/bin/bash

sed -i 's|include .*/conf/uwsgi_params;|include '"${NGINX_HOME}"'/conf/uwsgi_params;|g' nginx.conf

$NGINX_HOME/sbin/nginx -c ${TROOT}/nginx.conf
$PY2_ROOT/bin/uwsgi -d ${ERR} --ini uwsgi.ini --processes ${MAX_THREADS} --gevent 1000 --wsgi hello

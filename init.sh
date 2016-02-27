#!/usr/bin/env bash

sudo rm /etc/nginx/sites-enabled/default

sudo ln -s /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

gunicorn -c etc/gunicorn_conf.py hello:application &
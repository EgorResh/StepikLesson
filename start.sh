#!/bin/bash

sudo /etc/init.d/mysql start
mysql -uroot -e "create database stepicdb;"
mysql -uroot -e "grant all privileges on stepicdb.* to 'box'@'localhost' with grant option;"
~/web/ask/manage.py makemigrations
~/web/ask/manage.py migrate

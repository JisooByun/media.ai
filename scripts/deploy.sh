#!/bin/bash

REPOSITORY=/home/ubuntu/app/step2
TOMCAT_VER=tomcat8

sudo service $TOMCAT_VER stop
sudo rm -rf /var/lib/$TOMCAT_VER/webapps/kt/
sudo rm -rf /var/lib/$TOMCAT_VER/webapps/kt.war
cp $REPOSITORY/zip/*.war /var/lib/$TOMCAT_VER/webapps/kt.war
sudo service $TOMCAT_VER start
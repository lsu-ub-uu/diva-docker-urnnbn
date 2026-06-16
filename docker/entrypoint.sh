#!/bin/bash


/usr/local/tomcat/bin/catalina.sh run &
TOMCAT_PID=$!

until [ -d /usr/local/tomcat/webapps/urn-nbn ]; do
  sleep 1
done

sed -i "s|{SERVICE_NAME}|diva|g" /usr/local/tomcat/webapps/urn-nbn/WEB-INF/web.xml
cp -rf /tmp/urn-nbn/* /usr/local/tomcat/webapps/urn-nbn/
wait "$TOMCAT_PID"
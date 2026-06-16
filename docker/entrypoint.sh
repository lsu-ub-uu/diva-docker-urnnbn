#!/bin/bash


mkdir /usr/local/tomcat/webapps/urn-nbn
cd /usr/local/tomcat/webapps/urn-nbn
jar -xvf /usr/local/tomcat/webapps/urn-nbn.war
sed -i "s|{SERVICE_NAME}|diva|g" /usr/local/tomcat/webapps/urn-nbn/WEB-INF/web.xml
rm -f /usr/local/tomcat/webapps/urn-nbn.war

/usr/local/tomcat/bin/catalina.sh run &
TOMCAT_PID=$!

until [ -d /usr/local/tomcat/webapps/urn-nbn ]; do
  sleep 1
done

cp -rf /tmp/urn-nbn/* /usr/local/tomcat/webapps/urn-nbn/
wait "$TOMCAT_PID"
ARG CORA_DOCKER_VERSION
FROM cora-docker-tomcat:${CORA_DOCKER_VERSION}

#COPY /files/ /usr/local/tomcat/webapps
COPY /files/ /tmp

COPY /urnnbn*.war /usr/local/tomcat/webapps/urn-nbn.war
COPY /urnnbn.xml /usr/local/tomcat/conf/Catalina/localhost/urn-nbn.xml 

COPY entrypoint.sh       .
RUN chmod +x entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]
#ARG CORA_DOCKER_VERSION
#FROM cora-docker-tomcat:${CORA_DOCKER_VERSION}
#
#COPY /files/* /var/static-urn-nbn/
#COPY /urnnbn.xml /usr/local/tomcat/conf/Catalina/localhost/urnnbn.xml 

ARG CORA_DOCKER_VERSION
FROM cora-docker-tomcat:${CORA_DOCKER_VERSION}

# Copy the WAR file
COPY /files/nordiskamuseet.war /var/static-urn-nbn/nordiskamuseet.war

# Copy the Tomcat context descriptor
COPY /urnnbn.xml /usr/local/tomcat/conf/Catalina/localhost/urnnbn.xml

# Ensure proper permissions
RUN chmod 644 /var/static-urn-nbn/nordiskamuseet.war
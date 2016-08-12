FROM socialpro/jdk8:1.0

MAINTAINER Gustavo Caldeira

#Installs tomcat8
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y tomcat8

#RUN mkdir -p /opt/sp-frame-app/ssl
#ADD install-cert/jssecacerts /usr/lib/jvm/java-8-oracle/jre/lib/security/jssecacerts

#Insert the java home on catalina
RUN echo 'JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> /etc/default/tomcat8
RUN echo 'JAVA_OPTS="-server ${JAVA_OPTS} ${SP_JAVA_OPTS}"' >> /etc/default/tomcat8

#Exposes the port
EXPOSE 8080

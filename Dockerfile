FROM jdk8

MAINTAINER Gustavo Caldeira

#Installs tomcat8
RUN apt-get install -y tomcat8

#Insert the java home on catalina
RUN echo 'JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> /etc/default/tomcat8 

#Runs tomcat
#RUN service tomcat8 start

#Exposes the port
EXPOSE 8080

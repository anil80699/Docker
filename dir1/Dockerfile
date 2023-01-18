FROM ubuntu:latest
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install default-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.71/bin/apache-tomcat-9.0.71.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-9.0.71/* /usr/local/tomcat/
EXPOSE 8080
ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war /usr/local/tomcat/webapps
COPY index.html /usr/local/tomcat/webapps/sample/
CMD /usr/local/tomcat/bin/catalina.sh run

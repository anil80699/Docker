FROM tomcat:jdk8-corretto
RUN yum install wget -y
COPY *.war /usr/local/tomcat/webapps
CMD ["catalina.sh" ,"run"]

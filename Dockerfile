FROM tomcat:jdk8-corretto
RUN yum install wget -y
RUN wget https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war -P /usr/local/tomcat/webapps/
CMD ["catalina.sh" ,"run"]

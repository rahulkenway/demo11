FROM centos:7
RUN yum install java -y
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.82/bin/apache-tomcat-8.5.82.tar.gz .
RUN tar -xvzf apache-tomcat-8.5.82.tar.gz
RUN mv apache-tomcat-8.5.82/* /opt/tomcat
EXPOSE 8080
COPY ./webapp.war /opt/tomcat/webapps
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

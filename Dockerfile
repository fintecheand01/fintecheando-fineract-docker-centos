FROM centos:7.4.1708
RUN yum update -y

RUN yum install -y wget
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u161-b12/jdk-8u161-linux-x64.rpm"

# Accept the license
#RUN rpm -ivh jdk-8u161-linux-x64.rpm

# Here comes the tomcat installation
#RUN apt-get -y install tomcat7
#RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/default/tomcat7

# Expose the default tomcat port
#EXPOSE 8080

# Start the tomcat (and leave it hanging)
#CMD service tomcat7 start && tail -f /var/lib/tomcat7/logs/catalina.out


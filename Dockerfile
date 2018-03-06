FROM centos:7.4.1708
RUN yum update -y

RUN yum install -y wget
RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u161-b12/2f38c3b165be4555a1fa6e98c45e0808/jdk-8u161-linux-x64.rpm"

# Install Oracle JDK
RUN rpm -ivh jdk-8u161-linux-x64.rpm

# Here comes the Tomcat installation
RUN groupadd tomcat
RUN useradd -M -s /bin/nologin -g tomcat -d /opt/tomcat tomcat
RUN wget http://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.28/bin/apache-tomcat-8.5.28.tar.gz
RUN mkdir /opt/tomcat
RUN tar xvf apache-tomcat-8.5.28.tar.gz -C /opt/tomcat --strip-components=1
RUN cd /opt/tomcat
RUN chgrp -R tomcat /opt/tomcat
RUN chmod -R g+r /opt/tomcat/conf
RUN chmod g+x /opt/tomcat/conf
RUN chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/

#Create a tomcat service
#RUN vi /etc/systemd/system/tomcat.service

#RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/default/tomcat7

# Expose the default tomcat port
#EXPOSE 8080

# Start the tomcat (and leave it hanging)
#CMD service tomcat7 start && tail -f /var/lib/tomcat7/logs/catalina.out


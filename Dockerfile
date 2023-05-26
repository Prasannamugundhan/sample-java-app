FROM tomcat:8.0-alpine

LABEL maintainer=”prasannamugundhan52@gmail.com”

ADD target/sample-0.0.1-SNAPSHOT.jar /usr/local/tomcat/webapps/

EXPOSE 8080

CMD [“/opt/tomcat/bin/catalina.sh”, “run”]
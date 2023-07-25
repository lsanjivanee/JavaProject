FROM tomcat:latest
COPY target/*.jar /usr/local/tomcat/webapps/app.jar
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
CMD [ 'java' '-jar' '/usr/local/tomcat/webapps/app.jar' ] 

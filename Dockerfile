FROM opsmx11/java:ubuntu16_java8

RUN apt-get update  
##&& apt-get install stress-ng -y
ADD target/restapp.jar /restapp.jar
COPY dockerrun.sh /usr/local/bin/dockerrun.sh
RUN chmod +x /usr/local/bin/dockerrun.sh
#COPY prometheus/jmx_prometheus_javaagent-0.1.0.jar /jmx_prometheus_javaagent-0.1.0.jar
#COPY prometheus/tomcat.yml /tomcat.yml
#COPY tomcat.yaml /etc/dd-agent/conf.d/tomcat.yaml
#COPY install-dd.sh install-dd.sh
#RUN DD_API_KEY=<KEY> bash install-dd.sh
CMD ["dockerrun.sh"]

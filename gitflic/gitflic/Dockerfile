FROM eclipse-temurin:latest
RUN mkdir -p /var/log/gitflic && mkdir -p /opt/gitflic/cert && mkdir -p /var/gitflic/ && for d in cicd repo img releases registry; do mkdir -p "/var/gitflic/$d"; done;
COPY gitflic.jar /opt/gitflic
#COPY docker/application.properties /etc/gitflic/
WORKDIR /opt/gitflic
ENTRYPOINT ["java", "-Dspring.config.additional-location=/etc/gitflic/application.properties" ,"-jar", "/opt/gitflic/gitflic.jar"]
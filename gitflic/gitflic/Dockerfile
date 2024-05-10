FROM eclipse-temurin:latest
RUN useradd gitflic && mkdir -p /var/log/gitflic && mkdir -p /opt/gitflic/cert && mkdir -p /var/gitflic/{cicd,repo,img,releases,registry} && chown -R gitflic:gitflic /var/log/gitflic /opt/gitflic /var/gitflic
USER gitflic
COPY gitflic.jar /opt/gitflic
WORKDIR /opt/gitflic
ENTRYPOINT ["java", "-Dspring.config.additional-location=/etc/gitflic/application.properties" ,"-jar", "/opt/gitflic/gitflic.jar"]
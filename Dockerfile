#multistage Dockerfile

#this part is used ONLY to build artifact:
#build-only image:
FROM openjdk:8 AS BUILD_IMAGE
RUN apt update && apt install maven -y
RUN git clone -b vp-docker https://github.com/imranvisualpath/vprofile-repo.git
#this is directory where artifact will be generated
RUN cd vprofile-repo && mvn install

#output image:
FROM tomcat:8-jre11

RUN rm -rf /usr/local/tomcat/webapps/*
#copy the artifact created in the first part. Pay attention to from and to location
COPY --from=BUILD_IMAGE vprofile-repo/target/vprofile-v2.war /usr/local/tomcat/webapps/ROOT.war

#any extra settings if needed
EXPOSE 8080
CMD ["catalina.sh", "run"]

#docker images to see size difference for build and output images

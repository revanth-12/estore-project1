#use official jdk as base image
FROM openjdk:11
#create directory app
RUN mkdir /app
#copy the contents of the target directory into the app
COPY target/ /app
#set working directory as app
WORKDIR /app
#run jar file
CMD java -jar eStoreBackend-0.0.1-SNAPSHOT.jar --spring.config.name=application.properties
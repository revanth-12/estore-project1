#use official node image as the base image
FROM node:latest as build
#set the working directory as app
WORKDIR /usr/local/app
#Add the source code to app
COPY ./ /usr/local/app/
#Install the dependencies
RUN npm install --force
#generate the build of the application
RUN npm run build
#use official nginx image as the base image
FROM nginx:latest
#copy the build output  for nginx contents
COPY --from=build /usr/local/app/dist/admin-dashboard /usr/share/nginx/html
#Expose port 80
EXPOSE 80

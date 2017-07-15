FROM node:8.1.4-alpine

RUN apk update
RUN apk add --update docker
RUN apk add --update alpine-sdk
RUN npm install -g @angular/cli@1.2.0 
RUN ng set --global packageManager=yarn 
#RUN apk del alpine-sdk 
#RUN rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm 
#RUN npm cache clear 
#RUN sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

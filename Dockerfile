FROM node:8.1.4-alpine

RUN apk update \
  && apk add --update docker \
  && apk add --update alpine-sdk \
  && npm install -g @angular/cli@1.2.0 \
  && ng set --global packageManager=yarn \
  && apk del alpine-sdk \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache clear \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

FROM gocd/gocd-agent-docker-dind:v21.1.0

LABEL maintainer="Florian Tieben <ftiebe@gmail.com>"

USER root

RUN apk upgrade -U -a \
&& apk add \
npm \
chromium \
&& rm -rf glibc*apk /var/cache/* \
&& mkdir /var/cache/apk
      
ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/
RUN npm install -g npm-cli-login
USER go

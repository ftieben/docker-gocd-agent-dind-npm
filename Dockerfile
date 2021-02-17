FROM gocd/gocd-agent-docker-dind:v21.1.0

LABEL maintainer="Florian Tieben <ftiebe@gmail.com>"

USER root
RUN apk --update add npm && rm -rf glibc*apk /var/cache/apk/*
USER go

FROM nginx:mainline
MAINTAINER "cytopia" <cytopia@everythingcli.org>

LABEL \
    name="cytopia's nginx mainline image" \
    image="devilbox/nginx-mainline" \
    vendor="devilbox" \
    license="MIT"

###
### Runtime arguments
###
ENV MY_USER=nginx
ENV MY_GROUP=nginx
ENV HTTPD_START="/usr/sbin/nginx"
ENV HTTPD_RELOAD="nginx -s stop"

###
### Copy files
###

COPY ./data/docker-entrypoint.d /docker-entrypoint.d
COPY ./data/docker-entrypoint.sh /docker-entrypoint.sh


###
### Ports
###
EXPOSE 80
EXPOSE 443

###
### Signals
###
STOPSIGNAL SIGTERM


###
### Entrypoint
###
ENTRYPOINT ["/docker-entrypoint.sh"]

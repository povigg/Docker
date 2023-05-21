FROM nginx
LABEL "Project"="vprofile"

RUN rm -rf /etc/nginx/conf.d/default.conf
COPY nginxconf.conf /etc/nginx/conf.d/app.conf

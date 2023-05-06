FROM ubuntu
MAINTAINER guissepm (guissepm@gmail.com)
RUN apt-get update
RUN DEDIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
#ADD# static-website-example/ /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/i
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

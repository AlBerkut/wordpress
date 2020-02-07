FROM nginx:latest
MAINTAINER Alexey Berkut <alberkutoff@gmail.com>
COPY /config /etc/nginx/conf.d/
WORKDIR /etc/nginx/conf.d/
EXPOSE 80 443


FROM nginx
MAINTAINER Eric Holmes <eric@ejholmes.net>

RUN apt-get update && \
    apt-get install -y ruby-full && \
    apt-get -q -y clean && \
    rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ADD start-nginx /bin/start-nginx
COPY nginx.conf.erb /etc/nginx/nginx.conf.erb
ENV PORT 80

CMD ["start-nginx"]

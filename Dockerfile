FROM phusion/baseimage:0.9.15

RUN apt-get update && \
    apt-get install -y python python-dev python-pip && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install ansible
RUN ansible-galaxy install \
    Ansibles.hostname \
    Ansibles.apt \
    Ansibles.build-essential \
    Ansibles.perl \
    Ansibles.monit \
    ANXS.nginx
ADD site.yml /srv/ansible/site.yml
# Install Nginx.
RUN \
    add-apt-repository -y ppa:nginx/stable && \
    apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/* && \
    echo "\ndaemon off;" >> /etc/nginx/nginx.conf && \
    chown -R www-data:www-data /var/lib/nginx
# Define mountable directories.
VOLUME ["/etc/nginx/sites-enabled", "/etc/nginx/certs", "/etc/nginx/conf.d", "/var/log/nginx", "/var/www/html"]
# Define working directory.
WORKDIR /etc/nginx
# Define default command.
CMD ["nginx"]
# Expose ports.
EXPOSE 80
EXPOSE 443

CMD ["/sbin/my_init"]

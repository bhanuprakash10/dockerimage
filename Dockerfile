FROM docker.io/centos:6.8

RUN yum install -y git curl wget httpd
RUN cd /opt && git clone https://github.com/bhanuprakash10/coderepo.git && \
    cp /opt/coderepo/index.html /var/www/html/

COPY service_start.sh /usr/local/bin/

# Start service
CMD bash -C '/usr/local/bin/service_start.sh';'bash'


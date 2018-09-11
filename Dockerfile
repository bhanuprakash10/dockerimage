FROM docker.io/centos:6.8

RUN yum install -y git curl wget httpd telnet nc
RUN cd /opt && git clone https://github.com/bhanuprakash10/coderepo.git && \
    cp /opt/coderepo/index.html /var/www/html/

COPY service_start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/service_start.sh

# Start service
CMD ["/usr/local/bin/service_start.sh"]

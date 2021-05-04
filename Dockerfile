FROM ubuntu:18.04

RUN apt-get update
RUN apt-get install -y openconnect curl openssl iptables xmlstarlet

# generate custom https://github.com/Gilks/hostscan-bypass or use generic https://gitlab.com/openconnect/openconnect/-/raw/master/trojans/csd-post.sh
ADD csd-post.sh /csd-post.sh
RUN chmod +x csd-post.sh

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x entrypoint.sh

CMD ["/entrypoint.sh"]
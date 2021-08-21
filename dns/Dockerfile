FROM centos:latest

RUN dnf -y install bind bind-utils

COPY named.conf /etc/named/
COPY local-network.zone /var/named/
COPY 11.168.192.in-addr.arpa /var/named/

ENTRYPOINT [ "named" ]
CMD [ "-f","-u","named","-c","/etc/named/named.conf" ]
FROM centos:latest

RUN dnf -y install dhcp-server

COPY dhcpd.conf /etc/dhcp/dhcpd.conf
COPY docker-entrypoint.sh /usr/local/bin

ENV DHCPD_CONFIG /etc/dhcp/dhcpd.conf
ENV LEASE_FILE /var/lib/dhcpd/dhcpd.leases
ENV NIC eth0

EXPOSE 67

ENTRYPOINT [ "docker-entrypoint.sh" ]
CMD [ "" ]
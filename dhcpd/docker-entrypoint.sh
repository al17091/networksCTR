#!/bin/bash
/usr/sbin/dhcpd -f -cf $DHCPD_CONFIG -lf $LEASE_FILE $NIC
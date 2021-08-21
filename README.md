# Networks Containers

## Overview
This is the Dockerfile for the DHCP and DNS servers.   
There is also docker-compose to launch these.

## Description
Both original images are [centos : latest](https://hub.docker.com/_/centos).  

| Contianer | Package | Boot order |
| :--- | :---: | ---: |
| DHCP | dhcp-server | second |
| DNS | bind9 | first |

## Requirement
- docker engine & docker-compose
- Free-to-use docker network

## Usage
You can choose to use **Port Mapping** or a **Bridged Network**.  

### 1. Port Mapping
- DHCP container receives on port 67.
- DNS container receives on port 53.  

You can map ports with the -p option. 

```
docker run -it -p 67:67 dhcp dhcpd
docker run -it -p 53:53 dns named
```

### 2. Bridged Network (type macvlan)
Follow the steps below.  
1. Create a network bridge.
1. Connect to your computer's network interface.
1. Create a docker network with macvlan type.
1. Specify the IP address, create a container, and start it.

### 3. Bridged Network (type bridge)
If you change the default settings of docker and make a bridge connection,  
you only need to specify the IP address.

## Default Settings
### [DHCP](/dhcpd.conf.md)  
### [DNS](/dns.conf.md)

## Author
[Koki Higashi](https://github.com/al17091)

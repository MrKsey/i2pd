# i2pd
### Unofficial Docker Image for i2pd
This is unofficial dockerized precompiled i2pd within a debian:stable-slim image.

i2pd (I2P Daemon) is a full-featured C++ implementation of I2P client. i2p (Invisible Internet Protocol) is a universal anonymous network layer. All communications over I2P are anonymous and end-to-end encrypted, participants don't reveal their real IP addresses.

![i2pd](https://raw.githubusercontent.com/MrKsey/i2pd/master/i2pd.PNG)

More info:
- https://i2pd.readthedocs.io/en/latest/
- https://github.com/PurpleI2P/i2pd

### Requirements

* server with docker
* ~128 Mb RAM, ~200 Mb disk space 

### Installing

Create any directory (like /host/i2pd), put the "i2pd.conf" and "tunnels.conf" files there, edit them and connect this directory to the container directory "/var/lib/i2pd":
```
docker pull ksey/i2pd
docker run --name i2pd -d -p 7070:7070 -p 4444:4444 -p 4447:4447 -p 7656:7656 -v /host/i2pd:/var/lib/i2pd ksey/i2pd
```

*Default PARAMS:*
```
--service --bandwidth P --share 50 --limits.transittunnels 256 --upnp.enabled true --http.address 0.0.0.0 --httpproxy.address 0.0.0.0 --socksproxy.address 0.0.0.0 --sam.enabled true --sam.address 0.0.0.0
```
More info - https://i2pd.readthedocs.io/en/latest/user-guide/configuration/

* i2pd.conf example - https://github.com/PurpleI2P/i2pd/blob/openssl/contrib/i2pd.conf 
* tunnels.conf example - https://github.com/PurpleI2P/i2pd/blob/openssl/contrib/tunnels.conf



### PurpleI2P/i2pd last release:
2021-03-15 14:39:00: [PurpleI2P/i2pd, RELEASE] 2.37.0:

1. Address registration line for reg.i2p and stats.i2p through the web console
2. "4" and "6" caps for addresses without published IP address
3. Fixed incoming SSU session termination after 5 seconds
4. Floodfills with "U" cap are not ignored anymore
5. Show actual IP addresses for proxy connections
6. Yggdrasil for Android
7. address4 and address6 parameters to bind outgoing connections to 
8. lookuplocal BOB extended command
9. Mesh and Proxy network statuses
10. Symmetric NAT network status error
11. NTCP2 and reseed HTTP proxy support authorization now
12. Fixed race condition between tunnel build and floodfill requests decryption for ECIES routers
13. Correct handling of  numeric bandwidth limitation
14. Popup notification windows when unable to parse config for Windows
15. Rekey of low-bandwidth routers to ECIES
16. Bind server tunnel connection to specified address
17. Logging optimization
18. Outbound tunnel endpoint must be ipv4 compatible
19. Removed Windows service
20. Allow incoming Yggdrasil connection if NTCP2 is  connected through a proxy

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

































































# #
### PurpleI2P/i2pd last release:
2022-11-20 19:20:10: [PurpleI2P/i2pd, RELEASE] 2.44.0:

1. SSU2 is enbaled and SSU is disabled by default
2. SSL connection for server I2P tunnels
3. Localization to Italian and Spanish
4. Fixed endless processing of long HTTP headers for HTTP proxy and HTTP server tunnel
5. SSU2 through SOCKS5 UDP proxy
6. Reload tunnels through web console
7. Random selection between NTCP2 and SSU2 for transport
8. Configurable ssu2.mtu4 and ssu2.mtu6
9.  Fixed SSU2 with port=1 in RouterInfo
10.  Fixed crash at startup if addressbook is disabled
11. Added notbob.i2p to jump services
12. Remove DoNotTrack flag from HTTP Request header
13. NTCP2 ipv6 connection through SOCKS5 proxy
14. Separate network status and error
15. SSU2 send and verify path challenge

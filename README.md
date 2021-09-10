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
2021-08-23 14:27:50: [PurpleI2P/i2pd, RELEASE] 2.39.0:

1. Short tunnel build messages
2. Localization to Russian, Ukrainian, Turkmen, Uzbek and Afrikaans
3. Custom CSS styles for webconsole
4. Avoid slow tunnels with more than 250 ms per hop
5. Process DELAY_REQUESTED streaming option
6. "certsdir" options for certificates location
7. Yggdrasil reseed for v0.4, added two more
8. Rekey of all routers to ECIES
9. Encryption type 0,4 by default for server tunnels
10.  Fixed zero-hop tunnels
11.  Set minimal version for floodfill to 0.9.38
12. Fixed crash upon SAM session termination
13.  NTP sync through ipv6
14.  Allow ipv6 addresses for UDP server tunnels
15.  Consistent path for explicit peers
16.  Always create new tunnel from exploratory pool
17.  Better distribution for random tunnel's peer selection

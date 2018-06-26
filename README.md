# i2pd
### Unofficial Docker Image for i2pd
This is unofficial dockerized precompiled i2pd within a debian:stable-slim image (~ 65 Mb).

i2pd (I2P Daemon) is a full-featured C++ implementation of I2P client. i2p (Invisible Internet Protocol) is a universal anonymous network layer. All communications over I2P are anonymous and end-to-end encrypted, participants don't reveal their real IP addresses.

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
2018-06-26 17:56:24: [PurpleI2P/i2pd, RELEASE] 2.19.0:

1.  ECIES support for RouterInfo
2.  HTTP outproxy authorization
3.  AVX/AESNI runtime detection
4.  Android build using gradle
5.  Implementation of I2CP reconfigure
6.  EdDSA for RouterInfo by default
7. Datagrams to websocks
8. Fixed tunnels reload
9. Fixed headers in webconsole
10. Correct SAM session name
11. Updated docker
12.  Multiple changes for QT GUI
13. Initial implementation of NTCP2
14. Added I2PControl method "ClientServicesInfo"

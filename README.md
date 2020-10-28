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
2020-10-27 17:10:57: [PurpleI2P/i2pd, RELEASE] 2.34.0:

1.  Ping responses for streaming
2. STREAM FORWARD for SAM
3. Fixed  random crashes on I2CP session disconnect
4. Encyption type 0,4 by default for client tunnels
5. Fixed trim behind ECIESx25519 tags 
6. Tunnels through ECIESx25519 routers
7. Validate IP when trying connect to remote peer
8. Don't try to connect or build tunnels if offline
9. Set LeaseSet type to 3 for ratchets if not specified
10. Stripped out some HTTP header for HTTP server response
11. Fixed stream through ratchets hangs if first SYN was not acked
12. HTTP 1.1 and ""Last-Modified"" for addressbook requests
13. Database lookups from ECIES destinations with ratchets response
14. Handle WebDAV HTTP methods 
15. Handle ICMP responses and WinAPI errors for SSU
16. Removed NTCP
17. Dropped gcc 4.7 support

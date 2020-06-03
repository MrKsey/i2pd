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
2020-05-25 14:02:57: [PurpleI2P/i2pd, RELEASE] 2.32.0:

1. Complete implementation of ECIES-X25519-AEAD-Ratchet protocol
2. Multiple encryption types for local destinations
3. NTCP2 through SOCKS proxy
4. New gzip compression logic
5. Correct timestamp check for LeaseSet2
6. Logrotate config for rpm package
7. Update webconsole functional
8. Updated reseeds list
9. Fixed  encrypted LeaseSet without authentication
10. Throw error message if any port to bind is occupied for Windows
11. gzip parameter for UDP tunnels
12. Stop as soon as no more transit tunnels during graceful shutdown for Android
13. Increased max transit tunnels limit
14. Dropped windows support in cmake
15. Change SOCKS proxy connection response for clients without socks5h support

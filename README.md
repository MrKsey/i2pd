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
2020-04-10 17:50:45: [PurpleI2P/i2pd, RELEASE] 2.31.0:

### Notice to packages maintainers
Websockets and lua has been dropped. Please build your packages without it.

---

1. NTCP2 through HTTP proxy
2. Publish LeaseSet2 for I2CP destinations
3. Dropped Websockets and Lua support
4. Fixed NTCP2 socket descriptors leak
5. Fixed race condition with router's identity in transport sessions
6. Correct termination of not terminated streams 
7. Handle ECIESFlag in DatabaseLookup at floodfill
8. Show status page on main activity for android
9. Reopen SSU socket on exception
10. Send DeliveryStatusMsg for LeaseSet for ECIES-X25519-AEAD-Ratchet
11. Keep sending new session reply until established for ECIES-X25519-AEAD-Ratchet
12. Updated SSU log messages
13. Security hardening headers in web console
14. Various web console changes
15. Various QT changes

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














2019-03-21 15:44:48: [PurpleI2P/i2pd, RELEASE] 2.24.0:

1. Support of transient keys for LeaseSet2 and encrypted LeaseSet2
2. Recognize new signature type 11 (RedDSA)
3. Support websocket connections over HTTP proxy
4. Ability to disable full addressbook persist
5. Multiple SAM fixes
6. Ability to disable full addressbook persist
7. Fixed few issues with RouterInfo addresses and floodfills
8. Fixed  race condition for publishing
9. Fixed stuck addressbook update
10. Don't load peer profiles if non-persistant
11. Set REUSE_ADDR flag for ipv6 acceptors

### PurpleI2P/i2pd last release:
2019-03-21 15:44:48: [PurpleI2P/i2pd, RELEASE] 2.24.0:

1. Support of transient keys for LeaseSet2 and encrypted LeaseSet2
2. Recognize new signature type 11 (RedDSA)
3. Support websocket connections over HTTP proxy
4. Ability to disable full addressbook persist
5. Multiple SAM fixes
6. Fixed few issues with RouterInfo addresses and floodfills
7. Fixed  race condition for publishing
8. Fixed stuck addressbook update
9. Don't load peer profiles if non-persistant
10. Set REUSE_ADDR flag for ipv6 acceptors

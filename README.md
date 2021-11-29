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
2021-11-28 02:42:21: [PurpleI2P/i2pd, RELEASE] 2.40.0:

1. "Keep alive" parameter for client tunnels
2. Fixed tunnels reload (kill -s HUP)
3. Support openssl 3.0.0
4. Build tunnels through ECIES routers only
5. Reduced memory usage
6. Localization to Armenian
7. Added Windows menu item for opening datadir
8. Reseed if too few floodfills
9. Don't publish old and replacing tunnel in LeaseSet
10. Webconsole light/dark theme depending on system settings (via CSS)
11. Updated reseed servers list
12. Fixed build for Build on GNU/Hurd
13. Set gzip compression to false by default
14. i18n code called from ClientContext (libi2pd_client)

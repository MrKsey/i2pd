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





















2022-02-20 14:06:10: [PurpleI2P/i2pd, RELEASE] 2.41.0:

1. Clock syncronization through SSU
2. Added localization to German
3. Select compatible outbound tunnel for I2CP messages
4. Use TCP/IP sockets for I2CP on Android instead local sockets
5. Restart webconsole's acceptor in case of exception
6. Try another floodfill for publishing if no compatible tunnels found
7. Reduce memory usage for RouterInfo structures
8. Avoid duplicated addresses in RouterInfo. Check presence of netId and version
9. Update reseed servers list/cerificates
10. Changed webconsole's dark style colors
11. Fixed attempt to use Yggdrasil on start on Android
12. Fixed severe packets drop in SSU
13. Fixed crash on tunnel tests
14. Fixed loading addressbook subscriptions from config
# #
### PurpleI2P/i2pd last release:
2022-02-20 14:06:10: [PurpleI2P/i2pd, RELEASE] 2.41.0:

1. Clock syncronization through SSU
2. Added localization to German
3. Select compatible outbound tunnel for I2CP messages
4. Use TCP/IP sockets for I2CP on Android instead local sockets
5. Restart webconsole's acceptor in case of exception
6. Try another floodfill for publishing if no compatible tunnels found
7. Reduce memory usage for RouterInfo structures
8. Avoid duplicated addresses in RouterInfo. Check presence of netId and version
9. Update reseed servers list/cerificates
10. Changed webconsole's dark style colors
11. Fixed attempt to use Yggdrasil on start on Android
12. Fixed severe packets drop in SSU
13. Fixed crash on tunnel tests
14. Fixed loading addressbook subscriptions from config

Attention Android users:
Please take the builds from here
https://github.com/PurpleI2P/i2pd-android/releases/tag/2.41.0

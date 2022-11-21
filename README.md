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
2022-08-21 20:19:09: [PurpleI2P/i2pd, RELEASE] 2.43.0:

1. Complete SSU2 implementation
2. Localization to Chinese
3. Case insensitive headers for server HTTP tunnel
4. Explicit ipv6 ranges of known tunnel brokers for MTU detection
5. Ability to turn off address book
6. SSU2 transports have higher priority than SSU
7. Handle signals TSTP and CONT to stop and resume network
8. Fixed duplicated sessions in BOB
9. Always send "Connection: close" and strip out Keep-Alive for server HTTP tunnel
10. SSU2 is enabled and SSU is disabled by default for new installations
11. Deprecated limits.ntcpsoft, limits.ntcphard and limits.ntcpthreads config options
12. Fixed incorrect encryption key for exploratory lookup reply
13. Handle garlic message from exploratory tunnel
14. Do not show 'Address registration' line if LeaseSet is encrypted
15. Send RouterInfo update for long live sessions
16. Fixed MTU detection on Windows
17. Fixed crash on stop of active server tunnel
18. Don't send datagram to wrong destination in SAM

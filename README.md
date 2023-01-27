# i2pd
### Unofficial Docker Image for i2pd
This is unofficial dockerized precompiled i2pd image.

i2pd (I2P Daemon) is a full-featured C++ implementation of I2P client. i2p (Invisible Internet Protocol) is a universal anonymous network layer. All communications over I2P are anonymous and end-to-end encrypted, participants don't reveal their real IP addresses.

![i2pd](https://raw.githubusercontent.com/MrKsey/i2pd/master/i2pd.PNG)

More info:
- https://i2pd.readthedocs.io/en/latest/
- https://github.com/PurpleI2P/i2pd

### Requirements

* server with docker
* ~128 Mb RAM, ~200 Mb disk space 

### Installing

Create any directory (like /docker/i2pd), put the "i2pd.conf" and "tunnels.conf" files there, edit them and connect this directory to the container directory "/var/lib/i2pd":
```
docker run --name i2pd --restart=unless-stopped -d -p 7070:7070 -p 4444:4444 -p 4447:4447 -p 7656:7656 -v /docker/i2pd:/var/lib/i2pd ksey/i2pd
```

*Default PARAMS:*
```
--service --bandwidth P --share 50 --limits.transittunnels 256 --upnp.enabled true --http.address 0.0.0.0 --httpproxy.address 0.0.0.0 --socksproxy.address 0.0.0.0 --sam.enabled true --sam.address 0.0.0.0
```
More info - https://i2pd.readthedocs.io/en/latest/user-guide/configuration/

* i2pd.conf example - https://github.com/PurpleI2P/i2pd/blob/openssl/contrib/i2pd.conf 
* tunnels.conf example - https://github.com/PurpleI2P/i2pd/blob/openssl/contrib/tunnels.conf



### PurpleI2P/i2pd last release:
2023-01-11 20:34:24: [PurpleI2P/i2pd, RELEASE] 2.45.1:

1. Fixed UPnP crash if SSU2 or NTCP2 is disabled 
2. Fixed crash on termination for some platforms
3. Network status is always OK if peer test msg 5 received
4. Added "Full Cone NAT" status error
5. Drop duplicated I2NP messages in SSU2
6. Set rejection code 30 if tunnel with id already exists

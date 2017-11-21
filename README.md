# i2pd
### Unofficial Docker Image for i2pd
This is unofficial dockerized precompiled i2pd within a debian:stable-slim image (~ 65 Mb).

i2pd (I2P Daemon) is a full-featured C++ implementation of I2P client. i2p (Invisible Internet Protocol) is a universal anonymous network layer. All communications over I2P are anonymous and end-to-end encrypted, participants don't reveal their real IP addresses.

More info - https://i2pd.readthedocs.io/en/latest/

### Requirements

* server with docker
* ~128 Mb RAM, ~200 Mb disk space 

### Installing

Two ways to start:

**FIRST:** run with default args(!):
```
docker pull ksey/i2pd
docker run --name i2pd -d -p 7070:7070 -p 4444:4444 -p 4447:4447 ksey/i2pd
```

*(!)Default args:*
```
--service --bandwidth=P --share=50 --limits.transittunnels=256 --upnp.enabled=true --http.enabled=true --http.address=0.0.0.0 --httpproxy.enabled=true --httpproxy.address=0.0.0.0 --socksproxy.enabled=true --socksproxy.address=0.0.0.0 --sam.enabled=true --sam.address=0.0.0.0 --bob.enabled=true --bob.address=0.0.0.0
```

More info - https://i2pd.readthedocs.io/en/latest/user-guide/configuration/

**SECOND:** create any directory, put the "i2pd.conf" and "tunnels.conf" files there, edit them and connect this directory to the container directory "/etc/i2pd":
```
docker pull ksey/i2pd
docker run --name i2pd -d -p 7070:7070 -p 4444:4444 -p 4447:4447 -v /host/dir/i2pd:/etc/i2pd ksey/i2pd
```

* i2pd.conf example - https://github.com/PurpleI2P/i2pd/blob/openssl/contrib/i2pd.conf 
* tunnels.conf example - https://github.com/PurpleI2P/i2pd/blob/openssl/contrib/tunnels.conf

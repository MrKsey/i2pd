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
























2020-11-30 21:42:33: [PurpleI2P/i2pd, RELEASE] 2.35.0:

1. ECIES-x25519 router
2. Random intro keys for SSU
3. Graceful shutdown timer for windows
4. Send queue for I2CP messages
5. TCP_QUICKACK for NTCP2 sockets on Linux
6. Update DSA router keys to EdDSA
7. Exclude floodfills with DSA signatures or version < 0.9.28
8. Publish RouterInfo after update and confirmation
9. Random intervals between tunnel tests and manage for tunnel pools
10. Create paired inbound tunnels if no inbound tunnels yet
11. Fixed transient signature length, if different from identity
12. Terminate I2CP session if destroyed
13. Check if ECIES-X25519-AEAD-Ratchet session expired before generating more tags 
14. Correct block size for delivery type local for ECIES-X25519-AEAD-Ratchet
15. Don't replace an address book record by one with DSA signature
16. Update reseed servers list

Note for package maintainers
---
`cmake` and `make` flag with AVX switch (`USE_AVX` in `make` and -DUSE_AVX=1 in `cmake`) was deprecated due to changes in code.
Disabling AESNI flag is no more required, required checks automaticaly will be done on code build stage.

Please update your build scripts according to changes.
# #

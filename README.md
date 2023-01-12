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






















































































2023-01-03 23:25:30: [PurpleI2P/i2pd, RELEASE] 2.45.0:

1. Removed SSU transport
2.  Fixed file descriptors leak
3. 1 and 15 seconds bandwidth calculation for i2pcontrol
4. Compressible padding for I2P addresses
5. Don't accept incoming session from invalid/reserved addresses for NTCP2 and SSU2
6. Drop RouterInfos and LeaseSets with timestamp from future
7. Increased default max transit tunnels number from 2500 to 5000 or 10000 for floodfill
8. Fixed ::1 address in RouterInfo
9. SSU2 network error handling (especially for Windows)
10. Localization to Czech
11. NTCP2 and SSU2 timestamps are rounded to seconds
12. Don't send SSU2 termination again if termination received block received
13. Fixed random crash on AddressBook update
14. Test for Symmetric NAT with peer test msgs 6 and 7
15.  Fixed spamming to log if no descriptors
16. Don't select overloaded peer for next tunnel
17. Limit simultaneous tunnel build requests by 4 per pool
18. Fixed RTT self-reduction for long-live streams
19. Fixed crash if incorrect LeaseSet size
20. "No Descriptors" router error state
21. Remove "X-Requested-With" in HTTP Proxy for non-AJAX requests
22.  Fixed SSU2 network error handling (especially for Windows)

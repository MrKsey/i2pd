#!/bin/sh

if [ ! -e /var/lib/i2pd/certificates ]; then
  cp -R /usr/share/i2pd/certificates /var/lib/i2pd/certificates
fi

if [ ! -e /var/lib/i2pd/i2pd.conf ]; then
  cp /etc/i2pd/i2pd.conf /var/lib/i2pd/i2pd.conf
fi

if [ ! -e /var/lib/i2pd/subscriptions.txt ]; then
  cp /etc/i2pd/subscriptions.txt /var/lib/i2pd/subscriptions.txt
fi

if [ ! -e /var/lib/i2pd/tunnels.conf ]; then
  cp /etc/i2pd/tunnels.conf /var/lib/i2pd/tunnels.conf
fi

if [ ! -v PARAMS ] || [ -z "$PARAMS" ] || [ "$PARAMS" == "NONE" ]; then
  i2pd --service
else
  i2pd --service $PARAMS
fi

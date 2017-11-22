#
# This is unofficial dockerized precompiled i2pd within a debian:stable-slim image (~ 65 Mb).
#
FROM debian:stable-slim
MAINTAINER Bob <kcey@mail.ru>
ENV REFRESHED_AT 2017–11–21

ENV I2PD_URL=https://api.github.com/repos/PurpleI2P/i2pd/releases \
I2PD_RELEASE="latest" \
DEBIAN_CODENAME="*"

RUN export DEBIAN_FRONTEND=noninteractive HISTSIZE=200 HISEFILESIZE=0 \
&& apt-get update && apt-get upgrade -y \
&& apt-get install --no-install-recommends -y ca-certificates wget curl \
&& mkdir /tmp/i2pd && cd /tmp/i2pd \
&& wget --tries=3 $(curl -s $I2PD_URL/$I2PD_RELEASE | \
   grep browser_download_url | \
   egrep -o 'http.+\.\w+' | \
   grep -m 1 -i "$(if [ "$DEBIAN_CODENAME" != "*" ]; then echo $DEBIAN_CODENAME; else cat /etc/*-release | grep VERSION= | egrep -o '\(.+\)' | tr -d "()"; fi)" | \
   grep -i "$(dpkg --print-architecture)") \
&& apt-get install -f -y ./*.deb \
&& apt-get purge -y -q --auto-remove wget curl \
&& apt-get clean \
&& cd / \
&& rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/* \
&& addgroup nobody --system \
&& chown -R i2pd:nobody /var/lib/i2pd \
&& chmod u+rw /var/lib/i2pd

VOLUME [ "/etc/i2pd" ]
VOLUME [ "/var/lib/i2pd" ]

USER i2pd

EXPOSE 7070 4444 4447 7656 2827 7654 7650

ENTRYPOINT ["i2pd"]

CMD ["--service", "--bandwidth=P", "--share=50", "--limits.transittunnels=256", "--upnp.enabled=true", \
"--http.enabled=true", "--http.address=0.0.0.0", \
"--httpproxy.enabled=true", "--httpproxy.address=0.0.0.0", \
"--socksproxy.enabled=true", "--socksproxy.address=0.0.0.0", \
"--sam.enabled=true", "--sam.address=0.0.0.0", \
"--bob.enabled=true", "–-bob.address=0.0.0.0"]

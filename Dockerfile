FROM resin/rpi-raspbian
MAINTAINER Gavin Adam <gavinadam80@gmail.com>

RUN apt-get update && apt-get install -y \
    wget \
    php5-common \
    php5-cli \
    --no-install-recommends && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV DOKUWIKI_VER 2015-08-10a

WORKDIR /root

RUN wget http://download.dokuwiki.org/out/dokuwiki-63487079d8919ad20087d39beea025a9.tgz && \
tar -xvzf dokuwiki-63487079d8919ad20087d39beea025a9.tgz && \
rm dokuwiki-63487079d8919ad20087d39beea025a9.tgz

WORKDIR /root/dokuwiki

VOLUME ["/root/dokuwiki"]

EXPOSE 80

ADD .htaccess .

CMD [ "php", "-S", "0.0.0.0:80" ]

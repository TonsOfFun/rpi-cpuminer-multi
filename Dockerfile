#ckerfile for cpuminer
# usage: docker run /cpuminer --url xxxx --user xxxx --pass xxxx
# ex: docker run bitcrypto/rpi-cpuminer-multi --algo [ALGORITHM] --url stratum+tcp://[URL]:[PORT] --user [USERNAME] --pass [PASSWORD]
#
# If you wish to donate BTC to help me continue my efforts please send to this address: 1EZiDpMT8GgDQXcuyZZD7bR5Nydtw3GeU


FROM            sdhibit/rpi-raspbian
MAINTAINER      Elvis Nuno <admin@bitcryp.to>

RUN             apt-get update -qq

RUN             apt-get install -qqy automake
RUN             apt-get install -qqy m4
RUN             apt-get install -qqy libcurl4-openssl-dev
RUN             apt-get install -qqy libjansson-dev
RUN             apt-get install -qqy libssl-dev
RUN             apt-get install -qqy git
RUN             apt-get install -qqy build-essential

RUN             git clone https://github.com/tpruvot/cpuminer-multi.git

RUN             cd cpuminer-multi && ./autogen.sh
RUN             cd cpuminer-multi && ./configure CFLAGS="-O3 -mfpu=neon" --with-crypto --with-curl
RUN             cd cpuminer-multi && ./build.sh

WORKDIR         /cpuminer-multi

ENTRYPOINT      ["./cpuminer"]

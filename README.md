cpuminer-multi for ARM
==============

Container Overview:
==============
This container is built on sdhibit/rpi-raspbian runs the latest version of tprubot's cpuminer, forked from the original [pooler](https://github.com/pooler)'s cpuminer. You can review the algorithms currently supported by cpuminer [here](https://github.com/tpruvot/cpuminer-multi/blob/windows/README.md#algorithms)
Note: This container is __for ARM systems only.__

Testing:
==============
This container has been extensively built and tested on Raspberry Pi B/B+ and Raspberry Pi 2 B's, with the testing on the Raspberry Pi 3 B pending.

Usage:
==============
There are several ways to configure how the miner runs, but most commonly the simplest way to run the container is as follows:

`user@host: docker pull bitcrypto/docker-cpuminer-arm`

`user@host: docker run bitcrypto/rpi-cpuminer-multi --algo [ALGORITHMS] --url stratum+tcp://[URL]:[PORT] --user [USERNAME] --pass [PASSWORD]`

Donations:
==============
BTC donations are gratefully acceppted to this address: 1EZiDpMT8GgDQXcuyZZD7bR5Nydtw3GeU

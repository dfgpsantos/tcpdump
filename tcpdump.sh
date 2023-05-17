#!/bin/bash

TIME=5
TIMEOUT=60
TEST=1
INTERFACE=ens160

rm -rf *.pcap

while [ $TIME -gt 0 ]

do

echo "Captura $TEST"
sudo tcpdump -G $TIMEOUT -W 1 -w captura$TEST.pcap -i $INTERFACE
TEST=$(( $TEST + 1))
TIME=$(( $TIME - 1))


done

exit 0

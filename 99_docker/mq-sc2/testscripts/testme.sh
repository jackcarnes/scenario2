#!/bin/bash
cat testfiles/event$1*.xml | amqsput EVENT.ORDER
sleep 2
./qs-show.sh
echo

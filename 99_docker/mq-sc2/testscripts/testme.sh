#!/bin/bash
cat testfiles/event$1*.xml | amqsput EVENT.ORDER
echo

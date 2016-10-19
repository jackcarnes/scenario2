#!/bin/bash
echo "Starting to clear queues..."
echo "SC2.TEST.CAMPAIGN"
amqsget SC2.TEST.CAMPAIGN
echo
echo
echo "SC2.TEST.CANCEL"
amqsget SC2.TEST.CANCEL
echo
echo
echo "SC2.TEST.FILTERED"
amqsget SC2.TEST.FILTERED
echo
echo
echo "EVENT.ORDER"
amqsget EVENT.ORDER
echo
echo "Done."
echo


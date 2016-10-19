#!/bin/bash
echo "Starting to clear queues..."
echo
echo "clear ql (SC2.TEST.CAMPAIGN)" | runmqsc >/dev/null
echo "clear ql (SC2.TEST.CANCEL)" | runmqsc >/dev/null
echo "clear ql (SC2.TEST.FILTERED)" | runmqsc >/dev/null
echo "clear ql (EVENT.ORDER)" | runmqsc >/dev/null
echo "Done."
echo

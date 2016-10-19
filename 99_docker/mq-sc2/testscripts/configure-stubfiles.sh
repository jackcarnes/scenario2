#!/bin/bash
 curl -H "Content-Type: application/json" -X POST -d '{"orderId":"1","accountName":"'$1'","salesforceId":"'$2'"}' http://stub:7800/updatefile

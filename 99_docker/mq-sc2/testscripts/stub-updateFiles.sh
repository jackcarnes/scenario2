#!/bin/bash
echo
echo "Updating order 1 with accountName $1 and salesforceId $2"
echo
curl -H "Content-Type: application/json" -X POST -d '{"orderId":"1","accountName":"'$1'","salesforceId":"'$2'"}' http://stub:7800/updatefile
echo
echo
echo "Updating order 2 with accountName $1 and salesforceId $2"
echo
curl -H "Content-Type: application/json" -X POST -d '{"orderId":"2","accountName":"'$1'","salesforceId":"'$2'"}' http://stub:7800/updatefile
echo
echo "Done"
echo

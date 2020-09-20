#!/bin/bash

#oc apply -f mocklp-service.json && oc apply -f mocklp.rc.json && oc apply -f mockstorage-rc.json
#sleep 15
MOCKIP=`oc describe pod mockstorage-44jxf | grep IP | awk '{print $2}'`
export MOCKSTORAGEIP=$MOCKIP
echo $MOCKSTORAGEIP

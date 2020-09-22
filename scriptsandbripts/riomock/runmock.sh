mockstorageip=$(oc apply -f mocklp-service.json && oc apply -f mocklp.rc.json && oc apply -f mockstorage-rc.json && sleep 15 && oc get pods | grep mocks | awk '{print $1}' | xargs -n1 oc describe pod | grep IP | awk '{print $2}')
mockstorageip=$(echo $mockstorageip | awk '{print $NF}')
sed -i '/storage_endpoints=/c\storage_endpoints="'"$mockstorageip"'"' "$INI_PATH"
echo "$mockstorageip Added to : $INI_PATH"

read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # do dangerous stuff

# RUN rio-bundle
(cd $RIO_PATH; docker-compose run rio-bundle ./deploy.sh inventories/rio.ini)

fi
#(cd $INI_APTH; cat rio.ini)

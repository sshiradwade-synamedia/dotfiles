##This script does the rolling update of the pods which make a memsql connection

 

##Note:  Before each child aggregator upgrade and after the removal of endpoint run this shell script
#MemsqlUpgradeCnt is a dummy variable to introduce rolling update

 

MemsqlUpgradeCnt=($(oc env deploy api --list --namespace=vmr | grep MemsqlUpgradeCnt | cut -d "=" -f 2))
if [ -z "$MemsqlUpgradeCnt" ]
then
   MemsqlUpgradeCnt=1
else
   MemsqlUpgradeCnt=$((MemsqlUpgradeCnt+1))
fi
deployNames=($(oc get deploy --namespace=rio | awk '{print $1}' | grep -v NAME))

 

for i in ${deployNames[@]}
do
    if [ $i != "segment-recorder" ] && [ $i != "ui" ] && [ $i != "sats-server" ] && [[ $i != *"zookeeper"* ]]
    then
        oc env deploy $i MemsqlUpgradeCnt=$MemsqlUpgradeCnt --namespace=rio
    fi
done

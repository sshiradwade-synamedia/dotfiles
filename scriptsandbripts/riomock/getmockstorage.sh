oc get pods | grep "mockst"| awk '{print $1}' | xargs -n1 oc describe pod | grep "IP" | awk '{print $2}'

#!/bin/bash

NIFI_SERVICE=$(kubectl get service -l kubedirector.hpe.com/kdcluster=nifi | grep ^s | cut -d" " -f1)

NIFI_PORT=$(minikube service $NIFI_SERVICE | tail -n 1 | cut -d: -f3)

echo "If using kubedirector-lab, run the following on your host to forward ports:"
echo
echo "vagrant ssh -- -L $NIFI_PORT:localhost:$NIFI_PORT"

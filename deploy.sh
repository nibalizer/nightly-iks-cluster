#!/bin/bash

kubectl -n clean delete cm/nightly-cluster-script
kubectl -n clean create configmap nightly-cluster-script --from-file=nightly_cluster.sh
kubectl -n clean apply -f job.yaml

sleep 2
echo kubectl -n clean get job
kubectl -n clean get cronjob
echo kubectl -n clean get cm
kubectl -n clean get cm
echo kubectl -n clean get pod
kubectl -n clean get pod


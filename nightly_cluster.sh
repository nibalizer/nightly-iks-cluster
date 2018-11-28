#!/bin/bash

if [ -z ${API_KEY} ];then
    echo "No api key detected! Error!"
    echo "export API_KEY to continue"
    exit 1
fi

export PATH=${PATH}:${HOME}/local/bin/
echo which ibmcloud
which ibmcloud

ibmcloud login --apikey ${API_KEY} -a https://api.us-east.bluemix.net


echo "Performing nightly cluster-rebuild"
date=$(date +%F)
yesterday=$(date --date yesterday +%F)

echo ibmcloud ks cluster-create --name nibz-nightly-${date} --zone wdc06 --machine-type u2c.2x4 --private-vlan 2245765 --public-vlan 2245763

ibmcloud ks cluster-create --name nibz-nightly-${date} --zone wdc06 --machine-type u2c.2x4 --private-vlan 2245765 --public-vlan 2245763

sleep 2

echo ibmcloud ks cluster-rm nibz-nightly-${yesterday} -f

ibmcloud ks cluster-rm nibz-nightly-${yesterday} -f

echo "ibmcloud ks clusters | grep nibz"

ibmcloud ks clusters | grep nibz

Nightly testing cluster
=======================



This is a collection of tooling and software that gives me a new IBM Kubernetes Services (IKS) cluster every night. This follows the 're-build your dev lab every night' principle I learned from one of my first managers.


Setup
-----


* Build the docker image
* Apply the secret for IBM API_KEY
* Apply the script as a config map
* Add the cronjob resource

(Most of this is covered by deploy.sh)



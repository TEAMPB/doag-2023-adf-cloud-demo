#!/bin/sh
cd scripts/create-fmw-infrastructure-domain/domain-home-on-pv
sh create-domain.sh -i create-domain-inputs.yaml -o ~/DOAG/wls-kube/fmw-domain

#!/bin/sh
helm repo add weblogic-operator https://oracle.github.io/weblogic-kubernetes-operator/charts --force-update
kubectl create serviceaccount doag-weblogic-operator-sa

helm uninstall doag-weblogic-operator 

helm install doag-weblogic-operator \
  weblogic-operator/weblogic-operator \
  --namespace wls-doag \
  --set "enableClusterRoleBinding=false" \
  --set "domainNamespaceSelectionStrategy=Dedicated" \
  --wait

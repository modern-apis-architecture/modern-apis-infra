#!/bin/bash
helm repo add kong https://charts.konghq.com
helm repo update
kubectl create namespace api-gateway
helm install kong kong/kong  --set ingressController.installCRDs=false --namespace api-gateway

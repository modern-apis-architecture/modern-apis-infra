#!/bin/bash
helm repo add kong https://charts.konghq.com
helm repo update
kubectl create namespace api-gateway
kubectl label namespace api-gateway istio-injection=enabled --overwrite
helm install kong kong/kong -f kong-values.yaml --set proxy.type=NodePort,proxy.http.nodePort=30000,proxy.tls.nodePort=30003 --set ingressController.installCRDs=false --namespace api-gateway

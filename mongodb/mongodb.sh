#!/bin/bash
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo update
kubectl create namespace database
helm install mongodb bitnami/mongodb  --set auth.enabled=false --namespace database

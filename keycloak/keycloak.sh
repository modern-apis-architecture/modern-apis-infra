#!/bin/bash
kubectl create ns iam
helm repo add bitnami https://charts.bitnami.com/bitnami
helm install keycloak bitnami/keycloak --set auth.adminUser=keycloak,auth.adminPassword=keycloak --version 10.0.0 --namespace iam

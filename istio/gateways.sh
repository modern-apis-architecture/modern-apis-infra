#!/bin/bash
kubectl create namespace istio-ingress
helm install istio-ingressgateway istio/gateway -n istio-ingress

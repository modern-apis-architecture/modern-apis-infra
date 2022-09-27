#!/bin/bash
kubectl create namespace cards
kubectl create namespace payments
kubectl label namespace cards istio-injection=enabled --overwrite
kubectl label namespace payments istio-injection=enabled --overwrite

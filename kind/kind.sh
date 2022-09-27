#!/bin/bash
kind create cluster --name modern-apis-architecture --config clusterconfig.yaml
kubectl cluster-info --context kind-modern-apis-architecture

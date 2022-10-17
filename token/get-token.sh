#!/bin/bash
kubectl exec -it testcurl -- sh

curl --location --request POST 'http://keycloak.iam/realms/coinsure/protocol/openid-connect/token' \
--header 'Content-Type: application/x-www-form-urlencoded' \
--data-urlencode 'client_id=coinsure-cards' \
--data-urlencode 'grant_type=password' \
--data-urlencode 'username=maria' \
--data-urlencode 'password=maria' \
--data-urlencode 'client_secret=IRS8Zvc2RncEcwmrb7aSDKWaOqZmaODZ' \
--data-urlencode 'scope=openid'


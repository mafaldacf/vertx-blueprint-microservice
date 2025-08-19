#!/usr/bin/env bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

docker build -t "mafaldacf/api-gateway" $DIR/../api-gateway
docker build -t "mafaldacf/cache-infrastructure" $DIR/../cache-infrastructure
docker build -t "mafaldacf/inventory-microservice" $DIR/../inventory-microservice
docker build -t "mafaldacf/monitor-dashboard" $DIR/../monitor-dashboard
docker build -t "mafaldacf/order-microservice" $DIR/../order-microservice
docker build -t "mafaldacf/product-microservice" $DIR/../product-microservice
docker build -t "mafaldacf/shopping-cart-microservice" $DIR/../shopping-cart-microservice
docker build -t "mafaldacf/store-microservice" $DIR/../store-microservice
docker build -t "mafaldacf/account-microservice" $DIR/../account-microservice

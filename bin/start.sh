#!/usr/bin/env bash

export COMPOSE_PROJECT_NAME=widedelivery

export wkdr=$PWD

cd $wkdr/shared && docker compose up -d

#cd $wkdr/admin-api && make start
#cd $wkdr/admin-ui && make start
cd $wkdr/user-svc && make start
cd $wkdr/order-svc && make start
cd $wkdr/driver-svc && make start
cd $wkdr/client-api && make start

cd $wkdr
make proxystart

unset wkdr

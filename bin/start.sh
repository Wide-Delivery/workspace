#!/usr/bin/env bash

export COMPOSE_PROJECT_NAME=widedelivery

export wkdr=$PWD

#cd $wkdr/admin-api && make start
cd $wkdr/client-api && make start
cd $wkdr/admin-ui && make start

cd $wkdr
make proxystart

unset wkdr

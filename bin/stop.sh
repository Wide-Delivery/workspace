#!/usr/bin/env bash

export COMPOSE_PROJECT_NAME=widedelivery

export wkdr=$PWD
#cd $wkdr/ms-delivery-kotlin && make stop
cd $wkdr/user-svc && make stop
cd $wkdr/client-api && make stop
#cd $wkdr/wide-delivery-admin-ui && make stop

cd $wkdr
make proxystop
unset wkdr

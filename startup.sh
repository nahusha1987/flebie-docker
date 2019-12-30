#!/bin/sh
export EXTERNAL_IP="$(hostname -I | awk '{print $1}')"
docker-compose up $@

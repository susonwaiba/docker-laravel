#!/bin/bash

docker-compose exec -u $(id -u):$(id -g) php bash


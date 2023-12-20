#!/bin/bash

xhost +local:docker
docker compose build --no-cache

docker compose up



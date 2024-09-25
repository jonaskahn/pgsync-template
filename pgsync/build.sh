#! /bin/sh
docker buildx create --use --name builder --node builder0
docker buildx build --platform linux/amd64 --tag ifelsedotone/pgsync:latest . --push
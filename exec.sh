#!/bin/sh
ID=$(docker ps --format="{{.ID}}" --filter="name=atlas-sdk-jira")
docker exec -it $ID /bin/sh

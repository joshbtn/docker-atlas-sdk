ID=$(docker ps --format="{{.ID}}" --filter="name=atlas-sdk")
docker exec -it $ID /bin/sh

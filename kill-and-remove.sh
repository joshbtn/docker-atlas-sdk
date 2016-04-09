ID=$(docker ps --format="{{.ID}}" --filter="name=atlas-sdk")
docker kill $ID
docker rm $ID

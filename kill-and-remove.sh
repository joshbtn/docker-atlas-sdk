ID=$(docker ps --format="{{.ID}}" --filter="name=atlas-sdk-jira")
docker kill $ID
docker rm $ID

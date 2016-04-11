ID=$(docker ps -a --format="{{.ID}}" --filter="name=atlas-sdk-jira")
docker kill $ID
docker rm $ID

# remove images no tags
docker rmi $(docker images -q -f "dangling=true")

# copy file from container
docker cp CONTAINER:/var/logs/ /tmp/app_logs

# clean docker images except tagged "latest" one
docker images --format "{{.Repository}}:{{.Tag}}" | grep -v "latest" | xargs -r docker rmi
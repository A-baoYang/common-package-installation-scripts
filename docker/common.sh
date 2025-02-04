# remove images no tags
docker rmi $(docker images -q -f "dangling=true")

# copy file from container
docker cp CONTAINER:/var/logs/ /tmp/app_logs
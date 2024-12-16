# remove images no tags
docker rmi $(docker images -q -f "dangling=true")

docker-compose build --no-cache # rebuild images with the latest code and config
docker-compose up # compose all the docker images up
docker rmi $(docker images -f "dangling=true" -q) # delete out-of-date images
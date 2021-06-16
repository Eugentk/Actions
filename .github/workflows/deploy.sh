#!/bin/bash

echo 'Starting to Deploy...'
ssh ubuntu@34.241.248.244 " sudo docker image prune -f
        cd poster
        sudo docker-compose down
        sudo docker-compose up --build -d --force-recreate
        "
echo 'Deployment completed successfully'
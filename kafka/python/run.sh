#!/bin/bash

docker run --rm --network singlenode_default --name consumer consumer
docker run --rm --network singlenode_default  --name producer producer

#docker run --rm --name consumer consumer
#docker run --rm --name producer producer

#sh run.sh
#sh build.sh

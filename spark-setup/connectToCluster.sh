#! /bin/bash

if [ $# -ne 1 ]; then
  echo Usage: connectToCluster.sh cluster_name
  exit $1
fi

name=$1
gcloud compute ssh "$name" -- -L8123:localhost:8123 -L8080:localhost:8080 -L8888:localhost:8888


exit $?

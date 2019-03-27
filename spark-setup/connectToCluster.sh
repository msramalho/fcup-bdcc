#! /bin/bash

if [ $# -ne 1 ]; then
  echo Usage: connectToCluster.sh cluster_name
  exit $1
fi

name=$1
gcloud compute ssh "$name-m" -- -L8123:localhost:8123

exit $?

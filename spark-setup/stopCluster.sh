#! /bin/bash

if [ $# -ne 1 ]; then
  echo Usage: stopCluster.sh cluster_name
  exit $1
fi

name=$1
gcloud compute instances stop "$name-m" 

exit $?
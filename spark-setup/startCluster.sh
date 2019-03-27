#! /bin/bash

if [ $# -ne 1 ]; then
  echo Usage: startCluster.sh cluster_name
  exit $1
fi

name=$1
gcloud compute instances start "$name-m" 

exit $?
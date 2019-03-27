#! /bin/bash

if [ $# -ne 2 ]; then
  echo Usage: createCluster.sh cluster_name bucket 
  exit 1
fi

cluster_name=$1
bucket=$2

gcloud dataproc clusters create $cluster_name \
    --bucket $bucket \
    --initialization-actions \
        gs://dataproc-initialization-actions/jupyter/jupyter.sh \
    --single-node \
    --master-boot-disk-size=20GB \
    --master-machine-type=n1-standard-2

exit $?


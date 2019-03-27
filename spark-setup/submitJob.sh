if [ $# -ne 2 ]; then
  echo Usage: submitJob.sh cluster_name PySparkProgram.py
  exit $?
fi

cluster=$1
file=$2
gcloud dataproc  jobs submit pyspark $file --cluster $cluster
exit $?

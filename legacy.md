### Requirements

- [Google Cloud SDK](https://cloud.google.com/sdk/) - specifically the `gcloud` and `gsutil` utilities

### "Version Control" of the notebook

Make sure you have the latest version of the notebook on your Google Storage bucket

```shell 
$ gsutil cp BDCCp1.ipynb gs://bdcc_up2015XXXX/notebooks/
```

When you're done bigclouding, copy the file back and commit changes
```shell
$ gsutil cp gs://bdcc_up2015XXXX/notebooks/BDCCp1.ipynb .
```

### Starting the "cluster"

```shell
$ cd spark-setup
$ ./startCluster.sh <clustername> #.e.g, clusterup2015XXXX
```

### Connecting

```shell
$ cd spark-setup
$ ./connectToCluster.sh <vm_name> # e.g., clusterup2015XXXX
```
The Jupyter instance _should_ now be running on http://localhost:8123

### Stopping 
```shell
$ cd spark-setup
$ ./stopCluster.sh <vm_name> # e.g., clusterup2015XXXX
```

**Note**: if any of this fails, check [the Google Cloud Platform Web App](https://console.cloud.google.com/)
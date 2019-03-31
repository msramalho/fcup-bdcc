# fcup-bdcc
Big Data &amp; Cloud Computing 

[Project description](https://www.dcc.fc.up.pt/~edrdo/aulas/bdcc/projects/01/)

## General Info 
### Deadline
Apr. 7, 2019

### Delivery
Send an email to edrdo@dcc.fc.up.pt with the following attachments:
- The Jupyter notebook (or the Python export of it, if you prefer);
- A text document in Portuguese or English summarising the work you could accomplish (in terms of functionality and data sets) and the difficulties you had, with at most 3 pages (excluding the cover page).

### Evaluation
Your code will be evaluated in terms of:

 - correctness in functional terms;
 - good use of Spark primitives, avoiding redundant or too complicated data tranformations;
 - legibility - use comments in your code to explain the steps in your algorithms, and indent the code properly (avoid long lines of code).
 - Your report should be short and succint (3 pages max.), but readable!

The completion of challenges proposed at the end of this document may be worth up to 15 % of the final grade.

## Development 
 - Some expected results which can be used for testing can be found [here](https://www.dcc.fc.up.pt/~edrdo/aulas/bdcc/projects/01/Tests.html)
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
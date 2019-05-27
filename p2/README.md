# BDCC Homework 2

António Almeida, up201505836

Miguel Ramalho,  up201403027

[Big Data Challenge Project Specification](http://www.dcc.fc.up.pt/~ines/aulas/1819/BDCC/big.html)


## Development steps 
1. Copy zip from bucket to our VM: `failed due to lack of memory`
2. Tried to read with pandas directly from zipped file with the `compression` option see [here](https://stackoverflow.com/a/32993553/6196010): `failed as it froze the VM`
3. Tried doing the same with pyspark: `same results as with pandas`
4. Tried to unzip the file with `gunzip` in the VM: `failed to lack of space`
5. Increased the settings in the VM to use 200GB of memory: `same error`
6. Tried creating a new VM but we ran out of credit
7. Reflection time
8. Unzipped locally and uploaded the >35GB unzipped file to our bucket
9. Created local sample from the csv file with 1M lines so as to use it in our experiments
10. Ran a pyspark notebook locally to start statistical analysis and plotting: `statistical analysis proved usable but plots did not`
11. So we reverted back to doing those in pandas: `worked fairly well`
12. After some web searching we discovered [DASK](https://dask.org/) which is a pandas wrapper that makes pandas work in parallel with a structure similar to that of pyspark - precisely what we needed
13. We redid the plots and added some new ones, as specified in the homework specification
14. We tried using python's [ggplot](http://ggplot.yhathq.com/) to achieve the mean line in the example plot with R's `stat_smooth` but there was some version incompatibilities and we gave up as this is too recent and not yet totally handled (see [this issue](https://github.com/yhat/ggpy/issues/662))
15. We migrated our DASK dataset to our new VM (24 cores) and ran it with the whole dataset


# Prediction Task
* olhar para 24h atrás, e dada a situação atual, quanto tempo é que ele vai ficar
* também se pode fazer um clustering de pacientes e medicamentos que tomam
* em função de caregiver, ver se as pessoas ficam mais ou menos tempo

## Development Setup

 - Create Compute Engine instance - 24vCPUs, region `europe-west-1`
 - SSH into VM - `$ ../spark-setup/.connectToCluster <instance-name>`
 - Install pip3 - `$ sudo apt-get install python3-pip python3-dev`
 - Install jupyter - `$ sudo pip3 install --prefix /usr/local jupyter`
 - Run jupyter - `$ juputer notebook` and open the web instance
 - Upload the `BDCC_p2_dask.ipynb` to Jupyter 
 - pErFoRM bIg DaTa ChAlLeNgE

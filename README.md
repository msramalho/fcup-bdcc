# Fcup-bdcc
Big Data & Cloud Computing 

## Part 1
Use [Spark](https://spark.apache.org/) and [Google Cloud Platform](https://cloud.google.com/) to perform analysis on increasing difficulty samples of the [MovieLens](https://grouplens.org/datasets/movielens/) dataset.

* [Part 1 folder](p1)
* [Jupyter Notebook](p1/BDCCp1.iynb)
* [Report](p1/report)

Example of Pyspark use:
```python
def recommendByTag(singleTag, TFIDF_tags, movies, min_fmax=10, numberOfResults=10, debug=False):
    # start by most complexity-reducing operation: filter
    # filter by the singleTag
    # remove entries with f_max < min_fmax
    df_tag = TFIDF_tags.filter(TFIDF_tags.tag == singleTag)\
                   .filter(TFIDF_tags.f_max >= min_fmax)
        
    # join to get movie title
    # order by descending TFIDF + ascending lexicographic title
    # remove unnecessary columns
    # return results limited to numberOfResults
    df = df_tag.join(movies, 'movieId')\
                .orderBy(['TF_IDF','title'], ascending=[0,1])\
                .select('movieId', 'title', 'TF_IDF')\
                .limit(numberOfResults)
    return df
```

## Part 2
Open problem of using Big Data tools and techniques to analyse a 32GB+ dataset of hospital events. Besides GCP, we used [DASK](https://dask.org/) and [dask-ml](https://dask-ml.readthedocs.io/en/latest/).

* [Part 2 folder](p2)
* [Jupyter Notebook w/ ML task](p2/sample.iynb)
* [Jupyter Notebook full dataset](p2/full.ipynb)
* [Report](p2/report)

#### Example Plot

<p align="center"><img src="https://i.imgur.com/kDlW55J.png"/></p>

#### Dask-Distributed Dashboard

<p align="center"><img src="https://i.imgur.com/QhPy7yj.gif"/></p>


## Authors
* [António Almeida](https://github.com/antonioalmeida)
* [Miguel Ramalho](https://github.com/msramalho)
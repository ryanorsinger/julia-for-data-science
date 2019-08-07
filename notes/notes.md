The `distance` function needs to take in two data points as vectors (one-dimensional arrays) and yield a single number (float) representing that distance.

The `classify` function needs to take in the distances of all the data points as vectors, along with their labels as vectors, and the number of neighbors to examine (a single number). The `classify` function will return a single element (which could be either a number or a string, depending on what populates the labels array of our dataset).

With `classify`, the `k` number needs to be an integer. There aren't a fractional amount of clusters, but a distinct and whole number of clusters. 
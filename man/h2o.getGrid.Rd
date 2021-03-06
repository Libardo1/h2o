% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grid.R
\name{h2o.getGrid}
\alias{h2o.getGrid}
\title{Get a grid object from H2O distributed K/V store.}
\usage{
h2o.getGrid(grid_id, sort_by, decreasing)
}
\arguments{
\item{grid_id}{ID of existing grid object to fetch}

\item{sort_by}{Sort the models in the grid space by a metric. Choices are "logloss", "residual_deviance", "mse", "auc", "accuracy", "precision", "recall", "f1", etc.}

\item{decreasing}{Specify whether sort order should be decreasing}
}
\description{
Note that if neither cross-validation nor a 
validation frame is used in the grid search, then the training metrics will display in the 
"get grid" output. If a validation frame is passed to the grid, and nfolds = 0, then the 
validation metrics will display. However, if nfolds > 1, then cross-validation metrics will 
display even if a validation frame is provided.
}
\examples{
\donttest{
library(h2o)
library(jsonlite)
h2o.init()
iris_hf <- as.h2o(iris)
h2o.grid("gbm", grid_id = "gbm_grid_id", x = c(1:4), y = 5,
         training_frame = iris_hf, hyper_params = list(ntrees = c(1, 2, 3)))
grid <- h2o.getGrid("gbm_grid_id")
# Get grid summary
summary(grid)
# Fetch grid models
model_ids <- grid@model_ids
models <- lapply(model_ids, function(id) { h2o.getModel(id)})
}
}

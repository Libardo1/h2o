% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.anyFactor}
\alias{h2o.anyFactor}
\title{Check H2OFrame columns for factors}
\usage{
h2o.anyFactor(x)
}
\arguments{
\item{x}{An \code{H2OFrame} object.}
}
\value{
Returns a logical value indicating whether any of the columns in \code{x} are factors.
}
\description{
Determines if any column of an H2OFrame object contains categorical data.
}
\examples{
\donttest{
library(h2o)
h2o.init()
iris_hf <- as.h2o(iris)
h2o.anyFactor(iris_hf)
}
}

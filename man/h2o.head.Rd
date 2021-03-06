% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.head}
\alias{h2o.head}
\alias{head.H2OFrame}
\alias{h2o.tail}
\alias{tail.H2OFrame}
\title{Return the Head or Tail of an H2O Dataset.}
\usage{
h2o.head(x, n = 6L, ...)

\method{head}{H2OFrame}(x, n = 6L, ...)

h2o.tail(x, n = 6L, ...)

\method{tail}{H2OFrame}(x, n = 6L, ...)
}
\arguments{
\item{x}{An H2OFrame object.}

\item{n}{(Optional) A single integer. If positive, number of rows in x to return. If negative, all but the n first/last number of rows in x.}

\item{...}{Ignored.}
}
\value{
An H2OFrame containing the first or last n rows of an H2OFrame object.
}
\description{
Returns the first or last rows of an H2OFrame object.
}
\examples{
\donttest{
library(h2o)
h2o.init(ip <- "localhost", port = 54321, startH2O = TRUE)
australia_path <- system.file("extdata", "australia.csv", package = "h2o")
australia <- h2o.uploadFile(path = australia_path)
head(australia, 10)
tail(australia, 10)
}
}

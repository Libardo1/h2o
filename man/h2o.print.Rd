% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.print}
\alias{h2o.print}
\title{Print An H2OFrame}
\usage{
h2o.print(x, n = 6L)
}
\arguments{
\item{x}{An H2OFrame object}

\item{n}{An (Optional) A single integer. If positive, number of rows in x to return. If negative, all but the n first/last number of rows in x.
Anything bigger than 20 rows will require asking the server (first 20 rows are cached on the client).}

\item{...}{Further arguments to be passed from or to other methods.}
}
\description{
Print An H2OFrame
}

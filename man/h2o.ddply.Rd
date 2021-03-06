% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.ddply}
\alias{h2o.ddply}
\title{Split H2O Dataset, Apply Function, and Return Results}
\usage{
h2o.ddply(X, .variables, FUN, ..., .progress = "none")
}
\arguments{
\item{X}{An H2OFrame object to be processed.}

\item{.variables}{Variables to split \code{X} by, either the indices or names of a set of columns.}

\item{FUN}{Function to apply to each subset grouping.}

\item{...}{Additional arguments passed on to \code{FUN}.}

\item{.progress}{Name of the progress bar to use. #TODO: (Currently unimplemented)}
}
\value{
Returns an H2OFrame object containing the results from the split/apply operation, arranged
}
\description{
For each subset of an H2O data set, apply a user-specified function, then combine the results.  This is an experimental feature.
}
\examples{
\donttest{
library(h2o)
h2o.init()

# Import iris dataset to H2O
iris_hf <- as.h2o(iris)
# Add function taking mean of Sepal.Length column
fun <- function(df) { sum(df[, 1], na.rm = TRUE) / nrow(df) }
# Apply function to groups by flower specie
# uses h2o's ddply, since iris_hf is an H2OFrame object
res <- h2o.ddply(iris_hf, "Species", fun)
head(res)
}
}
\seealso{
\code{\link[plyr]{ddply}} for the plyr library implementation.
}

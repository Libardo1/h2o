% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.rbind}
\alias{h2o.rbind}
\title{Combine H2O Datasets by Rows}
\usage{
h2o.rbind(...)
}
\arguments{
\item{\dots}{A sequence of H2OFrame arguments. All datasets must exist on the same H2O instance
(IP and port) and contain the same number and types of columns.}
}
\value{
An H2OFrame object containing the combined \dots arguments row-wise.
}
\description{
Takes a sequence of H2O data sets and combines them by rows
}
\examples{
\donttest{
library(h2o)
h2o.init()
prostate_path <- system.file("extdata", "prostate.csv", package = "h2o")
prostate <- h2o.uploadFile(path = prostate_path)
prostate_rbind <- h2o.rbind(prostate, prostate)
head(prostate_rbind)
dim(prostate)
dim(prostate_rbind)
}
}
\seealso{
\code{\link[base]{rbind}} for the base \code{R} method.
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.acos}
\alias{h2o.acos}
\title{Compute the arc cosine of x}
\usage{
h2o.acos(x)
}
\arguments{
\item{x}{An H2OFrame object.}
}
\description{
Compute the arc cosine of x
}
\examples{
\donttest{
h2o.init()
prostate_path <- system.file("extdata", "prostate.csv", package = "h2o")
prostate <- h2o.uploadFile(path = prostate_path)
h2o.acos(prostate[,2])
}
}
\seealso{
\code{\link[base]{acos}} for the base R implementation.
}

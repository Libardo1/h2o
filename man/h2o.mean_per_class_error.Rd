% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{h2o.mean_per_class_error}
\alias{h2o.mean_per_class_error}
\title{Retrieve the mean per class error}
\usage{
h2o.mean_per_class_error(object, train = FALSE, valid = FALSE,
  xval = FALSE)
}
\arguments{
\item{object}{An \linkS4class{H2OBinomialMetrics} object.}

\item{train}{Retrieve the training mean per class error}

\item{valid}{Retrieve the validation mean per class error}

\item{xval}{Retrieve the cross-validation mean per class error}
}
\description{
Retrieves the mean per class error from an \linkS4class{H2OBinomialMetrics}.
If "train", "valid", and "xval" parameters are FALSE (default), then the training mean per class error value is returned. If more
than one parameter is set to TRUE, then a named vector of mean per class errors are returned, where the names are "train", "valid"
or "xval".
}
\examples{
\donttest{
library(h2o)
h2o.init()

prostate_path <- system.file("extdata", "prostate.csv", package = "h2o")
prostate <- h2o.uploadFile(prostate_path)

prostate[,2] <- as.factor(prostate[,2])
model <- h2o.gbm(x = 3:9, y = 2, training_frame = prostate, distribution = "bernoulli")
perf <- h2o.performance(model, prostate)
h2o.mean_per_class_error(perf)
h2o.mean_per_class_error(model, train=TRUE)
}
}
\seealso{
\code{\link{h2o.mse}} for MSE, and \code{\link{h2o.metric}} for the
         various threshold metrics. See \code{\link{h2o.performance}} for
         creating H2OModelMetrics objects.
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/models.R
\name{h2o.aic}
\alias{h2o.aic}
\title{Retrieve the Akaike information criterion (AIC) value}
\usage{
h2o.aic(object, train = FALSE, valid = FALSE, xval = FALSE)
}
\arguments{
\item{object}{An \linkS4class{H2OModel} or \linkS4class{H2OModelMetrics}.}

\item{train}{Retrieve the training AIC}

\item{valid}{Retrieve the validation AIC}

\item{xval}{Retrieve the cross-validation AIC}
}
\description{
Retrieves the AIC value.
If "train", "valid", and "xval" parameters are FALSE (default), then the training AIC value is returned. If more
than one parameter is set to TRUE, then a named vector of AICs are returned, where the names are "train", "valid"
or "xval".
}
\examples{
\donttest{
h2o.init()
prostate_path <- system.file("extdata", "prostate.csv", package = "h2o")
prostate <- h2o.uploadFile(path = prostate_path)
p.sid <- h2o.runif(prostate)
prostate_train <- prostate[p.sid > .2,]
prostate_glm <- h2o.glm(x=3:7, y=2, training_frame=prostate_train)
aic_basic <- h2o.aic(prostate_glm)
print(aic_basic)
}
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/frame.R
\name{h2o.target_encode_create}
\alias{h2o.target_encode_create}
\title{Create Target Encoding Map}
\usage{
h2o.target_encode_create(data, x, y, fold_column = NULL)
}
\arguments{
\item{data}{An H2OFrame object with which to create the target encoding map.}

\item{x}{A list containing the names or indices of the variables to encode.  A target encoding map will be created for each element in the list.  Items in the list can be multiple columns.  For example, if `x = list(c("A"), c("B", "C"))`, then there will be one mapping frame for A and one mapping frame for B & C (in this case, we group by two columns).}

\item{y}{The name or column index of the response variable in the data. The response variable can be either numeric or binary.}

\item{fold_column}{(Optional) The name or column index of the fold column in the data. Defaults to NULL (no `fold_column`).}
}
\value{
Returns a list of H2OFrame objects containing the target encoding mapping for each column in `x`.
}
\description{
Creates a target encoding map based on group-by columns (`x`) and a numeric or binary target column (`y`). 
Computing target encoding for high cardinality categorical columns can improve performance of supervised 
learning models. A Target Encoding tutorial is available here: \url{https://github.com/h2oai/h2o-tutorials/blob/master/best-practices/categorical-predictors/target_encoding.md}.
}
\examples{
\donttest{
library(h2o)
h2o.init()

# Get Target Encoding Map on bank-additional-full data with numeric response
data <- h2o.importFile(
path = "https://s3.amazonaws.com/h2o-public-test-data/smalldata/demos/bank-additional-full.csv")
mapping_age <- h2o.target_encode_create(data = data, x = list(c("job"), c("job", "marital")), 
                                        y = "age")
head(mapping_age)

# Get Target Encoding Map on bank-additional-full data with binary response
mapping_y <- h2o.target_encode_create(data = data, x = list(c("job"), c("job", "marital")), 
                                      y = "y")
head(mapping_y)

}
}
\seealso{
\code{\link{h2o.target_encode_apply}} for applying the target encoding mapping to a frame.
}

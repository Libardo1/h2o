% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/classes.R
\docType{class}
\name{H2OGrid-class}
\alias{H2OGrid-class}
\alias{H2OGrid}
\alias{show,H2OGrid-method}
\title{H2O Grid}
\usage{
\S4method{show}{H2OGrid}(object)
}
\arguments{
\item{object}{an \code{H2OGrid} object.}
}
\description{
A class to contain the information about grid results
}
\section{Slots}{

\describe{
\item{\code{grid_id}}{the final identifier of grid}

\item{\code{model_ids}}{list of model IDs which are included in the grid object}

\item{\code{hyper_names}}{list of parameter names used for grid search}

\item{\code{failed_params}}{list of model parameters which caused a failure during model building,
it can contain a null value}

\item{\code{failure_details}}{list of detailed messages which correspond to failed parameters field}

\item{\code{failure_stack_traces}}{list of stack traces corresponding to model failures reported by
failed_params and failure_details fields}

\item{\code{failed_raw_params}}{list of failed raw parameters}

\item{\code{summary_table}}{table of models built with parameters and metric information.}
}}

\seealso{
\linkS4class{H2OModel} for the final model types.
}

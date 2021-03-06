% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geo_methods.R
\name{geo_cascade}
\alias{geo_cascade}
\title{Convenience function for calling the \code{\link{geo}} function
with method = 'cascade'}
\usage{
geo_cascade(..., cascade_order = c("census", "osm"))
}
\arguments{
\item{...}{arguments passed from and to the \code{\link{geo}} function}

\item{cascade_order}{a vector with two character values for the method argument 
in the order in which the geocoder services will be attempted
(ie. \code{c('census', 'geocodio')})}
}
\description{
Convenience function for calling the \code{\link{geo}} function
with method = 'cascade'
}

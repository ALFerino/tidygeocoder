% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/query_factory.R
\name{query_api}
\alias{query_api}
\title{Execute a geocoder API query}
\usage{
query_api(
  api_url,
  query_parameters,
  mode = "single",
  batch_file = NULL,
  address_list = NULL,
  content_encoding = "UTF-8",
  timeout = 20
)
}
\arguments{
\item{api_url}{Base URL of the API. query parameters are appended to this}

\item{query_parameters}{api query parameters in the form of a named list}

\item{mode}{\itemize{
    \item \code{"single"} : geocode a single address (all methods)
    \item \code{"list"} : batch geocode a list of addresses (geocodio)
    \item \code{"file"} : batch geocode a file of addresses (census)
}}

\item{batch_file}{a csv file of addresses to upload (census)}

\item{address_list}{a list of addresses for batch geocoding (geocodio)
should be 'json' for geocodio and 'multipart' for census}

\item{content_encoding}{Encoding to be used for parsing content}

\item{timeout}{timeout in minutes}
}
\value{
raw results from the query
}
\description{
The \code{\link{get_api_query}} function can create queries for this
function to execute.
}
\examples{
\donttest{
raw <- query_api("http://nominatim.openstreetmap.org/search", 
   get_api_query("osm", list(address = 'Hanoi, Vietnam')))
   
extract_results('osm', jsonlite::fromJSON(raw))
}

}
\seealso{
\code{\link{get_api_query}} \code{\link{extract_results}} \code{\link{geo}}
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/miscfun.R
\name{multi_merge}
\alias{multi_merge}
\title{Multiple data merge}
\usage{
multi_merge(data_list, ...)
}
\arguments{
\item{data_list}{List of separate data.frames/tables to merge}

\item{...}{Additional arguments passed to \code{merge}}
}
\value{
A data.frame/data.table, depending on the input data in the list
}
\description{
Merge data into a single data structure from a list of data.frames/tables
}
\examples{
d1 <- datavyu_dat()$parenthands
d2 <- as.data.frame(datavyu_dat()$childhands)
d3 <- datavyu_dat(n2=50)$parenthands
data_list <- list(d1, d2, d3)
merged_data <- multi_merge(data_list, all=TRUE)
}


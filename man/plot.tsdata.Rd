% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot.R
\name{plot.tsdata}
\alias{plot.tsdata}
\title{Plot a tsdata object}
\usage{
\method{plot}{tsdata}(x, y = NULL, ...)
}
\arguments{
\item{x}{A \code{tsdata} object created by \code{tsdata()}.}

\item{y}{Ignored.}

\item{...}{Additional arguments.}
}
\value{
The input \code{x}.
}
\description{
This method creates a ggplot of a \code{tsdata} object using \code{ggplot2}.
The time series data is visualized with dates on the x-axis and values on the y-axis.
}
\examples{
dates <- as.Date("2023-01-01") + 0:4
values <- c(10, 12, 15, 13, 17)
ts_obj <- tsdata(values, dates)
plot(ts_obj)
}

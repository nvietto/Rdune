% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/print_palette.R
\name{print.palette}
\alias{print.palette}
\title{Function for printing palette}
\usage{
\method{print}{palette}(x, ...)
}
\arguments{
\item{x}{Name of palette}

\item{...}{Other arguments}
}
\value{
A vector of colors.
}
\description{
Function for printing palette
}
\examples{
pal <- dune_palette("atreides")
print.palette(pal)
}

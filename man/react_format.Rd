% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/react_format.R
\docType{data}
\name{react_format}
\alias{react_format}
\title{Innovation Team reactable Theme}
\format{
An object of class \code{reactableTheme} of length 12.
}
\usage{
react_format
}
\value{
an object with lists to pass into the reactable function or options.
}
\description{
Contains the parameters and colour for a standarized table theme.
}
\examples{
library(mbsenergyUtils)
library(reactable)
reactable(iris, theme = react_format,
         highlight = TRUE, striped = TRUE, filterable = TRUE, resizable = TRUE, wrap = FALSE)

}
\author{
Alejandro Abraham \href{mailto:a.abraham@innovationteam.eu}{a.abraham@innovationteam.eu}
}
\keyword{datasets}

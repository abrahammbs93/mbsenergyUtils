% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/str_mid.R
\name{str_mid}
\alias{str_mid}
\title{Excel's MID}
\usage{
str_mid(string, i = 2, e = 5)
}
\arguments{
\item{string}{string or vector containig strings to parse.}

\item{i}{character number from which to start counting.}

\item{e}{character number where to stop counting.}
}
\value{
a vector with the remaining characters from the original strings
}
\description{
A function that emulates Excel's string functions LEFT(), MID() and RIGHT().
}
\author{
Alejandro Abraham \href{mailto:a.abraham@innovationteam.eu}{a.abraham@innovationteam.eu}
}

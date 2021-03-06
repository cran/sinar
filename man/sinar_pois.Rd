% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cls_sinar.R
\name{sinar_pois}
\alias{sinar_pois}
\title{Simulating  SINAR(1,1) process with innovations from a poison distribution.}
\usage{
sinar_pois(n_row, n_col, a10, a01, a11, l)
}
\arguments{
\item{n_row}{Number of rows in the simulated lattice.}

\item{n_col}{Number of columns in the simulated lattice.}

\item{a10}{Coefficient from the element \eqn{X_{i-1, j}}.}

\item{a01}{Coefficient from the element \eqn{X_{i, j-1}}.}

\item{a11}{Coefficient from the element \eqn{X_{i-1, j-1}}.}

\item{l}{Mean of the poison distribution used as innovations.}
}
\value{
A integer matrix.
}
\description{
\code{sinar_pois} returns a matrix representing a simulated regular lattice
from a SINAR(1,1) process with innovations from a poison distribution.
}
\details{
This function simulates a regular lattice from the model
\deqn{X_{i,j}= a_{10} X_{i-1,j} + a_{01} X_{i,j-1} + a_{11} X_{i-1, j-1} +
 \epsilon_{i,j}}
where \eqn{\epsilon_{i,j}} is an iid process with poison distribution. Note
the \eqn{a_{10}, a_{01}, a_{11}} must belong to the interval \eqn{[0,1]}.
}
\examples{
n_row <- 20
n_col <- 50
a10 <- 0.2
a01 <- 0.2
a11 <-  0.5
l <- 1
sinar_pois(n_row, n_col, a10, a01, a11, l)
}

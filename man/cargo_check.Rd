% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cargo_check.R
\name{cargo_check}
\alias{cargo_check}
\title{cargo_check}
\usage{
cargo_check(project, additional = NULL)
}
\arguments{
\item{project}{chr the project names with dirs}

\item{additional}{chr additional parameters in build}
}
\value{
project
}
\description{
the "cargo check "command
}
\examples{
cargo_check("dev/hello_world")
}

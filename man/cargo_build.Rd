% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cargo_build.R
\name{cargo_build}
\alias{cargo_build}
\title{cargo_build}
\usage{
cargo_build(project, additional = NULL)
}
\arguments{
\item{project}{chr the project names with dirs}

\item{additional}{chr additional parameters in build}
}
\value{
project
}
\description{
the "cargo build" command
}
\examples{
cargo_build("dev/hello_world")
}

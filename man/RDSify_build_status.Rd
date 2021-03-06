% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scmake.R
\name{RDSify_build_status}
\alias{RDSify_build_status}
\title{Copy info from build/status to .remake/objects}
\usage{
RDSify_build_status(new_only = TRUE,
  remake_file = getOption("scipiper.remake_file"))
}
\arguments{
\item{new_only}{logical. You could corrupt a shared-cache repo by calling
remake::make after git pulling new build/status files and before calling
scmake. Therefore, (1) you should avoid calling remake::make in a
shared-cache repo; call scmake instead, and (2) this flag provides
recourse; set new_only=FALSE to overwrite all .remake files for which we
have build/status files}

\item{remake_file}{filename of the remake YAML file for which build/status
files should be RDSified}
}
\description{
Copy build status files from versionable text to .remake binary (.rds file)
}
\keyword{internal}

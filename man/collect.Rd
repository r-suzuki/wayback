\name{collect}
\alias{collect}
\title{Collect source packages on a specified date with dependencies}
\usage{
collect(pkgs, date, outdir,
        dependencies = c("Imports", "Depends"),
        repos = "https://cloud.r-project.org",
        skip_installed = FALSE,
        skip_recommended = TRUE,
        overwrite = FALSE
  )
}
\description{
Collect source packages on a specified date with dependencies.
It automatically downloads \code{tar.gz} files and saves them in \code{outdir}.

An R script file named \code{install.R} is also included in \code{outdir},
which can be used to install all the downloaded packages.
}
\arguments{
  \item{pkgs}{character vector of the names of packages.}
  \item{date}{character specifying a date in \code{YYYY-MM-DD} format.
    This function tries to find source packages which were available
    on this date.}
  \item{outdir}{character specifying the output directory.
    It will contain downloaded source packages, an R script to install
    these packages, and a log file.}
  \item{dependencies}{character vector of the dependency level
    for additional downloads. It can include
    \code{c("Depends", "Imports", "LinkingTo", "Suggests")}.}
  \item{repos}{CRAN mirror URL such as \code{https://cloud.r-project.org}.}
  \item{skip_installed}{logical. If \code{TRUE} it does not collect files for
    packages already installed.}
  \item{skip_recommended}{logical. If \code{TRUE} it does not collet files for
    "recommended" packages.}
  \item{overwrite}{logical. If \code{TRUE} it overwrites existing files in
    \code{outdir}.}
}
\examples{
\dontrun{collect(pkgs = "ranger", date = "2023-03-01", outdir = "outdir")}
}

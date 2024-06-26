% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/finals.R
\name{ASF}
\alias{ASF}
\title{Estimate airspace fraction for each type of mesophyll tissue}
\usage{
ASF(AA, MA)
}
\arguments{
\item{AA}{number representing the area of air space within an area of a specific type of mesophyll tissue (eg. spongey mesophyll tissue)}

\item{MA}{number representing the area of a section of a specific type of mesophyll tissue (eg. spongey mesophyll tissue)}
}
\value{
number
}
\description{
Estimate airspace fraction for each type of mesophyll tissue
}
\examples{
AA<-5981.198 #measured airspace area of spongey mesophyll tissue chunk
MA<-17704.312 #measured area of spongey mesophyll tissue chunk (contains measured airspace area AA and unmeasured area of cells in tissue chunk)
ASF(AA,MA)
}

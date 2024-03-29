% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jd3_stl.R
\name{istl}
\alias{istl}
\title{Title}
\usage{
istl(
  y,
  periods,
  multiplicative = TRUE,
  swindows = NULL,
  twindows = NULL,
  ninnerloop = 1,
  nouterloop = 15,
  nojump = FALSE,
  weight.threshold = 0.001,
  weight.function = c("BIWEIGHT", "UNIFORM", "TRIANGULAR", "EPANECHNIKOV", "TRICUBE",
    "TRIWEIGHT")
)
}
\arguments{
\item{weight.function}{}
}
\description{
Title
}
\examples{
q<-rjd3stl::istl(rjd3toolkit::ABS$X0.2.09.10.M, c(12, 25))
decomp<-q$decomposition
}

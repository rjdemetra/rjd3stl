% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/jd3_stl.R
\name{stlplus}
\alias{stlplus}
\title{Title}
\usage{
stlplus(
  y,
  period,
  multiplicative = TRUE,
  swindow = 7,
  twindow = 0,
  lwindow = 0,
  sdegree = 0,
  tdegree = 1,
  ldegree = 1,
  sjump = 0,
  tjump = 0,
  ljump = 0,
  ninnerloop = 1,
  nouterloop = 15,
  weight.threshold = 0.001,
  weight.function = c("BIWEIGHT", "UNIFORM", "TRIANGULAR", "EPANECHNIKOV", "TRICUBE",
    "TRIWEIGHT"),
  legacy = FALSE
)
}
\arguments{
\item{y}{input time series.}

\item{period}{period, any positive real number.}

\item{multiplicative}{Boolean indicating if the decomposition mode is multiplicative (TRUE).}

\item{swindow}{length of the seasonal filter.}

\item{twindow}{length of the trend filter.}

\item{lwindow}{length of the filter used to remove the trend of the seasonal}

\item{sdegree}{degree of the seasonal local polynomial (0 or 1)}

\item{tdegree}{degree of the trend local polynomial (0 or 1)}

\item{ldegree}{degree of the low-pass local polynomial (0 or 1)}

\item{sjump}{number of jumps in the computation of the seasonal}

\item{tjump}{number of jumps in the computation of the trend}

\item{ljump}{number of jumps in the computation of the trend in the seasonal}

\item{ninnerloop}{Number of inner loops}

\item{nouterloop}{Number of outer loops (computation of robust weights)}

\item{weight.threshold}{Weights threshold (in [0, 0.3])}

\item{weight.function}{weights function}

\item{legacy}{use of the (bugged) legacy MAD}
}
\value{
A matrix with the following series: y, sa, t, s, i, fit, weights
}
\description{
Perform an STL like (based on Loess) decomposition on any periodicity
}
\examples{
q<-rjd3stl::stlplus(rjd3toolkit::ABS$X0.2.09.10.M, 12)
decomp<-q$decomposition
}

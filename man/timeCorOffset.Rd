% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/global.R, R/ClassGPR.R
\docType{methods}
\name{firstBreakToTime0}
\alias{firstBreakToTime0}
\alias{timeCorOffset}
\title{Convert first wave break to time-zero}
\usage{
firstBreakToTime0(fb, x, c0 = 0.299)

\S4method{timeCorOffset}{GPR}(x, t0 = NULL)
}
\arguments{
\item{x}{A object of the class GPR}

\item{c0}{Propagation speed of the GPR wave through air (used only when
\code{keep = NULL}).}

\item{t0}{A numeric vector with length equal either to \code{NULL}, or one 
or to the number traces.
If \code{t0 = NULL} `time0(x)` will be used.}
}
\description{
Account for the delay time between time of wave emission and time of first
wave break recording due to the antenna separation (offset).

Time correction for each trace to compensate the offset between transmitter 
and receiver antennae (it converts the trace time of the data acquired with
a bistatic antenna system into trace time data virtually acquiered with 
a monostatic system under the assumption of horizontally layered structure).
If all the traces have the same time-zero, this function does not change the 
trace but only the time (time scale). If the traces have different
time-zero, the traces are first aligned to have the same time-zero 
(spline interpolation)
}
\seealso{
\code{\link{time0}} to set time zero and 
         \code{\link{firstBreakToTime0}} to convert the first wave break
         into time zero.
}

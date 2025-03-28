\name{tverify}
\alias{tverify}
\alias{tverify.default}
\alias{plot.tverify}
\title{Verification of ternary forecasts / observations}
\description{Function to create verification information associated with a set of forecasts \code{p} and associated observations \code{o}.}
\usage{
tverify(p, o, q, forceq, ncirc, L)

\method{tverify}{default}(p = cbind(1, 1, 1)/3, o = cbind(0, 0, 1), 
        q = cbind(1, 1, 1)/3, forceq = FALSE, 
        ncirc = 11, L = diag(c(1, 1, 1))/sqrt(2))
\method{plot}{tverify}(x, thresh = 0, lsharp = TRUE, 
     L = diag(c(1, 1, 1))/sqrt(2),...)
}

\arguments{
  \item{p}{An n-by-3 matrix of ternary forecasts.}
  \item{o}{An n-by-3 matrix of ternary observations.}
  \item{q}{A 1-by-3 matrix containing the climatology.}  
  \item{forceq}{A logical. If \code{forceq} = TRUE then the input climatology \code{q} is used. If \code{forceq} = FALSE a climatology is calculated from \code{o}. }
  \item{ncirc}{Controls discretisation of barycentric coordinates. (The number of hexagons along each side of the triangle.) }
  \item{x}{An object of the tverify class (as produced by \code{\link{tverify}} or \code{\link{tgetcal}}.}
  \item{thresh}{A `threshold' number of forecasts in a `bin', below which the forecast will not be plotted. (Prevents diagram being cluttered by very rare forecasts).}
  \item{lsharp}{Logical controlling whether a ternary sharpness diagram is to be included.}
  \item{L}{A quadratic scoring matrix. The matrix for the Brier score is the default. Full functionality for other scores not yet implemented.}
  \item{\ldots}{Not used.}
}
\value{
An object of class \code{tverify}, which is a list containing the following components:
\item{pbin}{array of bins in barycentric coordinates.}
\item{Nobs}{number of forecasts in each bin.}
\item{obar}{mean onservation associated with each forecast bin.}
\item{score}{score associated with each forecast bin.} 
\item{unc}{uncertainty associated with each forecast bin.}
\item{rel}{reliability associated with each forecast bin.}
\item{res}{resolution associated with each forecast bin.}
\item{scorebar}{overall score.} 
\item{uncbar}{overall uncertainty.}
\item{relbar}{overall reliability.}
\item{resbar}{overall resolution.}
\item{ncirc}{number of bins along each side of triangle.} 
\item{p}{input forecast data.}
\item{o}{input observation data.}
\item{assigned}{index of bin assigned to each forecast.}
\item{L}{scoring matrix used.}
\item{hexc}{array of hexagon centres.}
\item{q}{climatology.}
\item{pk}{forecasts set to centre of each bin (\code{\link{tverify}}) or recalibrated (\code{\link{tgetcal}})}
\item{ok}{mean observations corresponding to forecasts \code{pk}}
\item{pars}{parameters in calibration (\code{\link{tgetcal}} only).}
\item{opt}{details of calibration (\code{\link{tgetcal}} only ).}
\item{f}{calibration function (\code{\link{tgetcal}} only, for use with \code{\link{tcalibrate}}).}
}
\references{
Jupp TE, Lowe R, Stephenson DB, Coelho CAS (2012) On the visualization, verification and recalibration of ternary probabilistic forecasts, Philosophical Transactions of the Royal Society, volume 370, pages 1100-1120. 

https://rsta.royalsocietypublishing.org/content/370/1962/1100.full/

https://arxiv.org/abs/1103.1303/
}
\author{
Tim Jupp
}
\examples{
data(foot)                            # get football betting data
tv   <- tverify(p=foot$p,o=foot$o)    # get verification info
plot(tv)                              # plot verification info
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

\name{ternvis-package}
\alias{ternvis-package}
\alias{ternvis}
\docType{package}
\title{
Visualisation, verification and calibration of ternary forecast data
}
\description{
A suite of functions for visualising ternary probabilistic forecasts.
}
\details{
\tabular{ll}{
Package: \tab ternvis\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2012-03-29\cr
License: \tab GPL-2
}
Colours can be assigned to ternary probabilistic forecasts using \code{\link{tcolour}}. 
These colours can be used to produce forecast maps as in the example function \code{\link{tmap}}.
A set of ternary forecasts \code{p} can be compared with subsequent ternary observations \code{o} using the function \code{\link{tverify}}. \code{\link{plot.tverify}} then displays this information in a Ternary Reliability Diagram. Calibration is performed using \code{\link{tgetcal}} and \code{\link{tcalibrate}}.
}
\author{
Tim Jupp

Maintainer: Tim Jupp <t.e.jupp@exeter.ac.uk>
}
\references{
Jupp TE, Lowe R, Stephenson DB, Coelho CAS (2012) On the visualization, verification and recalibration of ternary probabilistic forecasts, Philosophical Transactions of the Royal Society, volume 370, pages 1100-1120. 

\url{http://rsta.royalsocietypublishing.org/content/370/1962/1100.full}

\url{http://arxiv.org/abs/1103.1303}
}
\keyword{ package }
\seealso{
Some concepts adapted from those in package \emph{vcd}.
}
\examples{
data(foot)
# see the distribution of forecasts
tplot(foot$p,main="Bookmaker forecasts of \n football matches",
      dimnames=c("Home Win","Draw","Away Win"))
# see how well forecasts compare with results
# create object of class tverify
foot.verify <- tverify(p=foot$p,o=foot$o)
 
# plot ternary reliability diagram
dev.new()
plot(foot.verify, thresh=3)               

# get a (linear) calibration of these data
# create an object of class tverify
foot.calib <- tgetcal(foot.verify) 

# plot ternary reliability diagram of calibrated        
dev.new()
plot(foot.calib, thresh=3)                

data(rain)

tmap(rain,iyr=17,palette=TRUE,circles=FALSE,fac=10) }

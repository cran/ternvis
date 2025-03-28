\name{tgetcal}
\alias{tgetcal}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Get a linear or quadratic calibration of ternary forecast / observation data
}
\description{
Function to obtain a best-fitting calibration to a set of ternary forecasts p and corresponding observations o.
}
\usage{
tgetcal(tv, quad = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tv}{
An object of the tverify class (as produced by \code{\link{tverify}}).
}
  \item{quad}{
A logical describing which functional form to use for calibration. Linear calibration (\code{quad} = FALSE) is faster. Quadratic calibration (\code{quad} = TRUE) is more sophisticated but can be slow for large data sets.
}
}
\references{
Jupp TE, Lowe R, Stephenson DB, Coelho CAS (2012) On the visualization, verification and recalibration of ternary probabilistic forecasts, Philosophical Transactions of the Royal Society, volume 370, pages 1100-1120. 

https://rsta.royalsocietypublishing.org/content/370/1962/1100.full/

https://arxiv.org/abs/1103.1303/
}
\author{
Tim Jupp
}
\seealso{
\code{\link{tverify}}, \code{\link{tcalibrate}}
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

# plot ternary reliability diagram of calibrated forecasts       
dev.new()
plot(foot.calib, thresh=3)                
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

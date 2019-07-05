\name{tcalibrate}
\alias{tcalibrate}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calibration of ternary forecasts
}
\description{
Function to apply a calibration to a matrix of ternary forecasts.}
\usage{
tcalibrate(tv, p)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{tv}{
An object of class \emph{tverify}, for example produced by \code{\link{tgetcal}}.
}
  \item{p}{
An n-by-3 matrix of ternary forecasts which will be calibrated according to the calibration function embedded in \emph{dat}.
}
}
\value{
An n-by-3 array of calibrated ternary forecasts.
}
\references{
Jupp TE, Lowe R, Stephenson DB, Coelho CAS (2012) On the visualization, verification and recalibration of ternary probabilistic forecasts, Philosophical Transactions of the Royal Society, volume 370, pages 1100-1120. 

\url{http://rsta.royalsocietypublishing.org/content/370/1962/1100.full}

\url{http://arxiv.org/abs/1103.1303}
}
\author{
Tim Jupp
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{tgetcal}}, \code{\link{tplot}}, \code{\link{tverify}}
}
\examples{
# get football betting data
data(foot) 

# get verification info for these data                         
tv   <- tverify(p=foot$p,o=foot$o)  

# get a linear calibration based on verification info         
lc   <- tgetcal(tv)  

# consider an uncalibrated forecast p                 
p    <- cbind(0,0,1)    

# see where p is mapped by this calibration            
pcal <- tcalibrate(lc,cbind(0,0,1)) 

# plot the uncalibrated forecast
tplot(p) 
# plot the calibrated forecast                        
tplot(pcal,col="blue",newpage=FALSE,bg="transparent")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

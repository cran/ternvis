\name{foot}
\alias{foot}
\docType{data}
\title{
Football betting dataset
}
\description{
A collection of bookmakers' football odds (for home win/draw/away win, expressed as ternary probabilistic forecasts) and subsequent results. The data cover several years of English league games.
}
\usage{data(foot)}
\format{
The quoted odds, transformed to probabilities, are in foot$p (a 3-column matrix).
The corresponding results of the games are in foot$o (a 3-column matrix).
}
\source{
Data taken from \url{www.football-data.co.uk}.}
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
plot(foot.calib, thresh=3)                 }
\keyword{datasets}

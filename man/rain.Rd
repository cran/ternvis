\name{rain}
\alias{rain}
\docType{data}
\title{
Ternary precipitation forecast data set
}
\description{
An array of monthly seasonal precipitation forecasts and observations over South America, covering 25 years.
}
\usage{data(rain)}
\format{
A list containing 7 objects

rain$lats      a vector of 35 latitudes

rain$lons      a vector of 27 longitudes

rain$obs       array of ternary observations 
 
rain$preds     array of ternary forecast probabilities

rain$rel       array of reliabilities

rain$res       array of resolutions

rain$q         array of climatologies


}
\source{
Data from Caio Coelho at http://eurobrisa.cptec.inpe.br/.}
\examples{
data(rain)

ilon <- 5 # pick a longitude
ilat <- 6 # pick a latitude
iyr  <- 17 # pick a year (in the range 1:25)

rain$lons[ilon]                # the longitude
rain$lats[ilat]                # the latitude
rain$pred[ilon,ilat,iyr,] # the ternary forecast
rain$obs[ilon,ilat,iyr,]  # the ternary observation

}
\keyword{datasets}

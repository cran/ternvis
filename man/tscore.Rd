\name{tscore}
\alias{tscore}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Calculate the (Brier) score associated with ternary forecasts and observations
}
\description{
A utility function.}
\usage{
tscore(p, o, L = diag(c(1, 1, 1))/sqrt(2))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
An n-by-3 matrix of ternary forecasts.
}
  \item{o}{
An n-by-3 matrix of ternary observations.
}
  \item{L}{
A 3-by-3 matrix defining the quadratic score being used. (Default corresponds to Brier score.)
}
}
\references{
Jupp TE, Lowe R, Stephenson DB, Coelho CAS (2012) On the visualization, verification and recalibration of ternary probabilistic forecasts, Philosophical Transactions of the Royal Society, volume 370, pages 1100-1120. 

\url{http://rsta.royalsocietypublishing.org/content/370/1962/1100.full}

\url{http://arxiv.org/abs/1103.1303}
}
\author{
Tim Jupp
}
\examples{
data(foot)
tscore(p=foot$p,o=foot$o)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

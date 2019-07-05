\name{tsetup}
\alias{tsetup}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Utility function to calculate geometry associated with a quadratic score matrix
}
\description{
This is just a useful internal function.}
\usage{
tsetup(L = diag(c(1, 1, 1))/sqrt(2), q = cbind(1, 1, 1)/3)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{L}{
A 3-by-3 matrix defining the quadratic score being used. (Default corresponds to Brier score.)
}
  \item{q}{
A 1-by-3 matrix containing the climatology.
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
tsetup() # returns a set of useful objects
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

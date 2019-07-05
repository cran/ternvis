\name{tscale}
\alias{tscale}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Rescale a 3-vector to yield a ternary forecast
}
\description{
Utility function to rescale 3-vectors to be probability distributions.}
\usage{
tscale(p)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
a vector of length 3.
}
}
\details{
A utility function.}
\value{
A vector of length 3 rescaled so that elements are all >= 0 and sum to unity.
}
\author{
Tim Jupp
}
\examples{
tscale(cbind(1,2,3))  # rescale (1,2,3) to be a ternary forecast.
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

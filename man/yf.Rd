\name{yf}
\alias{yf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
y coordinate of a ternary forecast in barycentric coordinates
}
\description{
This is a utility function to calculate the y-coordinate of a point in barycentric coordinates.
It is unlikely that the user will want to use this function directly.
}
\usage{
yf(p = cbind(1, 1, 1)/3, M = tsetup()$M32)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
An n-by-3 matrix of ternary forecasts.
}
  \item{M}{
A 2-by-3 matrix describing the transfromation for R^3 to R^2.
}
}
\value{
An n-by-1 array of y-values for use in plotting.
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
\code{\link{tsetup}}, \code{\link{xf}}
}
\examples{
yf(p=cbind(.1,.2,.7))
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

\name{tgrid}
\alias{tgrid}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Create a grid of points in barycentric coordinates
}
\description{
Utility function to generate a grid of ternary forecasts equally spaced in baycentric coordinates.}
\usage{
tgrid(n)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{n}{
An integer describing the number of `bins' along each side of the barycentric triangle.
}
}
\value{
An n-by-3 matrix of ternary forecasts.
}
\references{
Jupp TE, Lowe R, Stephenson DB, Coelho CAS (2012) On the visualization, verification and recalibration of ternary probabilistic forecasts, Philosophical Transactions of the Royal Society, volume 370, pages 1100-1120. 

\url{http://rsta.royalsocietypublishing.org/content/370/1962/1100.full}

\url{http://arxiv.org/abs/1103.1303}
}
\author{
Tim Jupp
}
\seealso{
\code{\link{tplot}}
}
\examples{
tg <- tgrid(6) # make a grid of forecasts in the triangle
tg             # print forecasts to the terminal
tplot(tg)      # plot forecasts
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

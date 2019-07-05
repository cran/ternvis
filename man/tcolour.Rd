\name{tcolour}
\alias{tcolour}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Assign a colour to a ternary forecast
}
\description{
Function to assign a colour to a ternary forecast p, given a ternary climatology q.}
\usage{
tcolour(p = cbind(1, 1, 1)/3, q = cbind(1, 1, 1)/3, m = 0.7, 
        flip = FALSE, dich = "none", theta0 = 0)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{p}{
An n-by-3 matrix of ternary forecasts.
}
  \item{q}{
A 1-by-3 matrix containing the climatology.
}
  \item{m}{
Exponent controlling rate of colour saturation.
}
  \item{flip}{
Logical to transpose categories "B" and "A" in barycentric coordinates.
}
  \item{dich}{
Option to render colours as they would appear to a dichromat. Default choice \code{dich} = "none" leaves colours unchanged. Choices \code{dich} = "deutan" and \code{dich} = "protan" show colours as they would appear to those with deutanopia or protanopia (see \code{\link{dichromat}}).
}
  \item{theta0}{
Angle (degrees) through which to rotate colour palette around climatology \code{q} in barycentric coordinates.
}
}
\value{
A colour, of the format produced by \code{\link{rgb}}.
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
p <- cbind(0.7,0.2,0.1)   # define a forecast
q <- cbind(1,1,1)/3       # define a climatology
pcol <- tcolour(p=p,q=q)  # assign a colour
pcol                      # print the colour code to terminal
tplot(p,col=pcol)         # use this colour in a plot
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

\name{tpalette}
\alias{tpalette}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Draw a palette of the colours assigned to ternary forecasts
}
\description{
Function to fill barycentric coordinates with a colour palette.}
\usage{
tpalette(q = cbind(1, 1, 1)/3, bars = TRUE, m = 0.7, 
         flip = FALSE, lmain = FALSE, theta0 = 0, 
	 dich = "none", cex = 1, nhist = 12)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{q}{
A 1-by-3 matrix containing a climatology.
}
  \item{bars}{
Logical. If "FALSE" a simple colour palette is produced. If "TRUE" barplots representing the forecasts are overlain.
}
  \item{m}{
Parameter controlling the rate at which colours saturate towards the corners of the triangle.
}
  \item{flip}{
Logical to transpose categories "B" and "A" in barycentric coordinates.
}
  \item{lmain}{
Logical. If "TRUE" text is overlaid.
}
  \item{theta0}{
Angle (degrees) through which to rotate colour palette around climatology \code{q} in barycentric coordinates.
}
  \item{dich}{
Option to render colours as they would appear to a dichromat. Default choice \code{dich} = "none" leaves colours unchanged. Choices \code{dich} = "deutan" and \code{dich} = "protan" show colours as they would appear to those with deutanopia or protanopia (see \code{\link{dichromat}}).
}
  \item{cex}{
Factor for expanding the size of the dots when bars is "FALSE".
}
  \item{nhist}{
Number of barplots along each side of the triangle when bars is "TRUE".
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
\seealso{
\code{\link{tmap}}
}
\examples{
dev.new()
tpalette(bars=FALSE) # standard palette

dev.new()
tpalette(bars=TRUE) # palette with histograms overlaid
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

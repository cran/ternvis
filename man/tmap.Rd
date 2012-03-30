\name{tmap}
\alias{tmap}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Demonstration of how to make coloured maps of ternary forecasts
}
\description{
An example of how one might make forecast maps using \code{\link{tpalette}}.}
\usage{
tmap(dat, iyr, circles = FALSE, fac = 10, theta0 = 0, 
     dich = "none", m = 0.7, palette = TRUE, 
     flip = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dat}{
An array of forecasts in a suitable format. See \emph{Example} code below
}
  \item{iyr}{
In this example, an integer in the range 1 to 25.
}
  \item{circles}{
\code{circles} = FALSE (the default) fills map with coloured polygons. \code{circles} = TRUE fills map with circles whose radii are dependent on verification information. 
}
  \item{fac}{
Scaling factor for size of circles when \code{circles} = TRUE.
}
  \item{theta0}{
Angle to rotate colours on palette. See \code{\link{tcolour}}.
}
  \item{dich}{
Optionally render colours as they would appear to a dichromat. See \code{\link{tcolour}}.
}
  \item{m}{
Parameter controlling rate at which colours saturate in palette. See \code{\link{tcolour}}.
}
  \item{palette}{
Logical. If \code{palette} = TRUE a colour palette is included.
}
  \item{flip}{
Logical to choose whether to switch categories \emph{B} and \emph{A}. See \code{\link{tcolour}}.
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
data(rain)

tmap(rain,iyr=17,palette=TRUE,circles=FALSE,fac=10)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

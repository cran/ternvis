\name{tplot}
\alias{tplot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Plot ternary forecasts in barycentric coordinates. 
}
\description{
This function is almost exactly the same as the \code{ternaryplot} function in package \code{vcd} (on which it is based) except that the ordering of the vertices has been change to bottom left/top/bottom right, and the code has been extended work for an aribtrary scoring matrix \code{L}.}
\usage{
tplot(x = cbind(1, 1, 1)/3, L = diag(c(1, 1, 1))/sqrt(2), 
      scale = 1, dimnames = NULL, 
      dimnames_position = c("corner", "none"), 
      dimnames_color = "black", id = NULL, id_color = "black", 
      coordinates = FALSE, grid = TRUE, grid_color = "gray", 
      labels = c("inside", "outside", "none"), 
      labels_color = "darkgray", border = "grey", 
      bg = "white", pch = 19, cex = 1, prop_size = FALSE, 
      col = "red", main = "ternary plot", sub = NULL, 
      newpage = TRUE, pop = TRUE, col.main = "black", 
      col.sub = "black", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
an n-by-3 matrix of ternary forecasts.
}
  \item{L}{
A matrix describing the quadratic score function. (Default corresponds to the Brier score).
}
  \item{scale}{
row sums scale to be used.}
  \item{dimnames}{
dimension labels (defaults to the column names of \code{x}.}
  \item{dimnames_position, dimnames_color}{position and color of dimension labels.}
  \item{id}{optional labels to be plotted below the plot symbols. \code{coordinates} and \code{id} are mutually exclusive.}
  \item{id_color}{color of these labels.}
  \item{coordinates}{
if \code{TRUE}, the coordinates of the points are plotted below them. \code{coordinates} and \code{id} are mutually exclusive.}
  \item{grid}{
if \code{TRUE}, a grid is plotted. May optionally be a string indicating the line type (default: \code{"dotted"}).}
  \item{grid_color}{
grid colour.}
  \item{labels, labels_color}{
 position and colour of the grid labels.}
  \item{border}{
colour of the triangle border.}
  \item{bg}{
triangle background.}
  \item{pch}{
plotting character. Defaults to filled dots.}
  \item{cex}{
a numerical value giving the amount by which plotting text and symbols should be scaled relative to the default. Ignored for the symbol size if \code{prop_size} is not \code{FALSE}.}
  \item{prop_size}{
if \code{TRUE}, the symbol size is plotted proportional to the row sum of the three variables, i.e., represents the weight of the observation.}
  \item{col}{
plotting colour.}
  \item{main}{
main title.}
  \item{sub}{
a sub title.}
  \item{newpage}{
 if `TRUE', the plot will appear on a new graphics page.}
  \item{pop}{
logical; if `TRUE', all newly generated viewports are popped after plotting.}
  \item{col.main}{
colour for the title.}
  \item{col.sub}{
colour for the sub title.}
  \item{\dots}{
additional graphics parameters (see \code{\link{par}}).}
}
\author{
Tim Jupp (using code for \code{vcd:ternaryplot} as source).}
\examples{
tg <- tgrid(6) # make a grid of forecasts in the triangle
tg             # print to terminal
tplot(tg)      # plot them
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotting.R
\name{plot3d-SlingshotDataSet}
\alias{plot3d-SlingshotDataSet}
\alias{plot3d.SlingshotDataSet}
\title{Plot Slingshot output in 3D}
\usage{
\method{plot3d}{SlingshotDataSet}(x, type = NULL, add = FALSE,
  dims = seq_len(3), aspect = "iso", ...)
}
\arguments{
\item{x}{a \code{SlingshotDataSet} with results to be plotted.}

\item{type}{character, the type of output to be plotted, can be one of 
\code{"lineages"}, \code{curves}, or \code{both} (by partial matching), see
Details for more.}

\item{add}{logical, indicates whether the output should be added to an
existing plot.}

\item{dims}{numeric, which dimensions to plot (default is \code{1:3}).}

\item{aspect}{either a logical indicating whether to adjust the aspect ratio 
or a new ratio, see \code{\link[rgl:plot3d]{plot3d}}.}

\item{...}{additional parameters to be passed to \code{lines3d}.}
}
\value{
returns \code{NULL}.
}
\description{
Tools for visualizing lineages inferred by \code{slingshot}.
}
\details{
If \code{type == 'lineages'}, straight line connectors between
  cluster centers will be plotted. If \code{type == 'curves'}, simultaneous
  princiapl curves will be plotted.

When \code{type} is not specified, the function will first check the
  \code{curves} slot and plot the curves, if present. Otherwise,
  \code{lineages} will be plotted, if present.
}
\examples{
\dontrun{
library(rgl)
data("slingshotExample")
rd <- cbind(rd, rnorm(nrow(rd)))
sds <- slingshot(rd, cl, start.clus = "1")
plot3d(sds, type = 'b')

# add to existing plot
plot3d(rd, col = 'grey50', aspect = 'iso')
plot3d(sds, lwd = 3, add = TRUE)
}
}

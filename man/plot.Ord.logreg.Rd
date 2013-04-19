\name{plot.Ord.logreg}
\alias{plot.Ord.logreg}


\title{
Plot an Ord.logreg Object
}

\description{
Plots the trees in an Ord.logreg object.
}

\usage{
\method{plot}{Ord.logreg}(x, one.plot = TRUE, ...)
}


\arguments{
  \item{x}{ An object of class \code{Ord.logreg}.
}
  \item{one.plot}{ logical.  If \code{one.plot=TRUE}, up to 4 trees are plotted in the same graphics window.  If there are more than 4 trees in the model, 4 trees are plotted in each graphic window.  If \code{one.plot=FALSE}, al trees are plotted in separate graphics windows. 
}
  \item{\dots}{ Not currently used.
}
}


\author{
Bethany Wolf  wolfb@musc.edu
}


\seealso{
\code{\link{Ord.logreg}}
}

\examples{
data(OLRmod)

#Plotting all trees in the same window
plot(OLRmod)

#Plotting all trees in separate windows
plot(OLRmod, one.plot=FALSE)
}
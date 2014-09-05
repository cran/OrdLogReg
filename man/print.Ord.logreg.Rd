\name{print.Ord.logreg}
\alias{print.Ord.logreg}


\title{
Prints output for an ordinal logic regression model
}

\description{
This function prints and \code{Ord.logreg} object.  It is a method for a generic function \code{print} of class \code{Ord.logreg}.
}

\usage{
\method{print}{Ord.logreg}(x, \ldots)
}


\arguments{
  \item{x}{
An object of class \code{Ord.logreg}
}
 \item{\ldots}{ Not currently used.
}
}

\details{
This function is a method for the generic function print for class \code{"Ord.logreg"}. It can be invoked by calling print for an object of the appropriate class.
}


\author{
Bethany Wolf  wolfb@musc.edu
}


\seealso{\code{\link{Ord.logreg}}
}

\examples{
data(OLRmod)
print(OLRmod)
}

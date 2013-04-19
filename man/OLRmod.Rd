\name{OLRmod}
\alias{OLRmod}
\docType{data}

\title{
An Example of an Ordinal Logic Regression Model
}
\description{
The Ord.logreg model for data with an ordinal response with 4 categories and 10\% error.  The response in the data used to contruct the model follow the underlying logical relationship

Y4 = (X10 & X45 ) | (X25 & X45)\cr
Y3 = (X15 & X35)\cr
Y2 = (X5 & !X20) |  (!X20 & X30 & !X40)\cr

The Ord.logreg model was constructed using 5-fold cross validation considering tree sizes of 1 to 8 leaves.  
}

\usage{data(OLRmod)}


\examples{
data(OLRmod)
print(OLRmod)
}
\keyword{datasets}

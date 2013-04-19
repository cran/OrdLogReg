\name{predict.Ord.logreg}
\alias{predict.Ord.logreg}


\title{
Prediction of Response Using Ord.logreg
}

\description{
Computes predicted values for new data for an ordinal logic regression model fitted using \code{Ord.logreg}
}

\usage{
\method{predict}{Ord.logreg}(object, newdata, \ldots)
}

\arguments{
  \item{object}{
An object of class \code{Ord.logreg}.
}
  \item{newdata}{
A matrix or data frame containing new predictor values.  If not given, predictions will be made for the original data used to construct the model.
}
  \item{\dots}{Not currently used.
}
}


\value{
\item{predicted.category}{ A vector of predicted classes for each observation in the new data.}
\item{prediction.matrix}{ A matrix of indicators of whether or not a tree in the oridnal logic regression model made a positive prediction. The last column in the matrix represents the tree that predicts the highest class, the second to last column represents the tree that preditcts the second highest class, etc.  A value of 1 indcates the tree predicted that the observation was of the tree-specific class.
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

#Prediction on original data used to fit the model
predict(OLRmod)

#prediction on new data
data(OLRtestdata)
predict(OLRmod, newdata=OLRtestdata[,1:50])
}
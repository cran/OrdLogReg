\name{OLRtestdata}
\alias{OLRtestdata}
\docType{data}


\title{
Test Data for Ordinal Logic Regression
}

\description{OLRtestdata is simulated data including 50 binary predictors and an ordinal response with 4 possible categories where the ratio of obervations in each category is 1:1:1:1.  The dataset contains 400 observations and 50 binary predictors.  Columns 1,2,...,50 are the binary predictors and column 51 is the response.  Each predictor was simulated as an independent Bernoulli random variable with success probability 0.5.  The response variable is simualted from the model

Y4 = (X10 & X45 ) | (X25 & X45)\cr
Y3 = (X15 & X35)\cr
Y2 = (X5 & !X20) |  (!X20 & X30 & !X40)\cr

Note, Y was also simulated such that 10\% of the time it did not correctly match the model shown.
}

\examples{
data(OLRtestdata)
}
\keyword{datasets}

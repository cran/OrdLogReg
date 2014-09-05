\name{Ord.logreg}
\alias{Ord.logreg}


\title{Ordinal Logic Regression
}

\description{Constructs an ordinal logic regression model for identification of binary predictors and predictor interactions for an ordinal response
}

\usage{
Ord.logreg(resp, Xs, nleaf, use.cv = TRUE, kfold = 5, anneal.params)
}


\arguments{
  \item{resp}{vector of ordinal response values.  Note the reference cateogry should be assigned a value of 0.
}

  \item{Xs}{matrix or data frame of zeros and ones for all predictor variables.
}

  \item{nleaf}{numeric value or vector.  If \code{use.cv=FALSE}, nleaf can be either a single numeric value or vector (length is the number of categories -1).  A single value means that the maximum possible number of leaves in all trees will be \code{"nleaf"}. The default value is 8 when \code{use.cv=FALSE}.  If \code{use.cv=TRUE}, nleaf is a vector of the minimum and maximum values to be cosidered in the trees.  The default value is \code{c(1,8)}.
}

  \item{use.cv}{logical.  If \code{use.cv=TRUE}, cross-validation will be used to determine the best choice of model size for each tree inteh ordinal logic regression model.
}

  \item{kfold}{If \code{use.cv=TRUE}, \code{kfold} is the number of times the data are to be split during cross-validation to determine appropriate tree size.  Note, if \code{use.cv=FALSE}, this arguement will be ignored.
}

  \item{anneal.params}{a list containing the parameters for simulated annealing.  See the help file for the function \code{logreg.anneal.control} in the \code{LogicReg} package.  If missing, default annealing parameters are set at \code{start}=1, \code{end}=-2, and \code{iter}=50000.
}

}


\value{An object of class \code{"Ord.logreg"} which is a list including values
  \item{mod.dat}{ For data with K response categories, a list of the K-1 predictor datasets used to fit each logic regression tree in the model.}
  \item{model}{ A list of K-1 logic regression trees associated with the largest K-1 response categories.}
  \item{Ys}{ A list of the K-1 binary response vectors (based on the original ordinal response) generated to fit each of the K-1 logic regression trees.}
  \item{mod.preds}{ A vector containing the names of the predictors used in each of teh K-1 logic regression trees.}
  \item{pos}{ A vector of indicators of whether or not a predictor in an individial tree represents a predictor or its compliment.  A value of 1 indicates that the predictor occurs as the compliment.}
  \item{leaves }{ A vector of the maximum number of leaves used for each of the K-1 logic regression trees.}
  \item{CV }{ A statement describing if cross-validation was used.}
}



\author{
Bethany Wolf  wolfb@musc.edu
}



\seealso{
\code{\link{print.Ord.logreg}}, \code{\link{predict.Ord.logreg}}, \code{\link{plot.Ord.logreg}}
}
\examples{
data(OLRdata)


#typically >25000 would be used for the annealing algorithm.  
#Number of iterations here is set to 2500 for faster run time
#Fitting model without cross-validation
cont<-logreg.anneal.control(start=1, end=-2, iter=2500)
Xs<-OLRdata[,c(1:50)]
Ys<-OLRdata$Y
OLRmod1<-Ord.logreg(resp=Ys, Xs=Xs, use.cv=FALSE, anneal.params=cont)
print(OLRmod1)

#Fitting a model without cross-validation but setting the maximum number of leaves per tree
OLRmod2<-Ord.logreg(resp=Ys, Xs=Xs, nleaf=c(3,4,3), use.cv=FALSE, anneal.params=cont)
print(OLRmod2)

#Fitting model with cross-validation
OLRmod3<-Ord.logreg(resp=Ys, Xs=Xs, use.cv=TRUE, anneal.params=cont)
print(OLRmod3)
}

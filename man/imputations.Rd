% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ImputeMethods.R
\name{imputations}
\alias{imputations}
\alias{imputeConstant}
\alias{imputeHist}
\alias{imputeLearner}
\alias{imputeMax}
\alias{imputeMean}
\alias{imputeMedian}
\alias{imputeMin}
\alias{imputeMode}
\alias{imputeNormal}
\alias{imputeUniform}
\title{Built-in imputation methods.}
\usage{
imputeConstant(const)

imputeMedian()

imputeMean()

imputeMode()

imputeMin(multiplier = 1)

imputeMax(multiplier = 1)

imputeUniform(min = NA_real_, max = NA_real_)

imputeNormal(mu = NA_real_, sd = NA_real_)

imputeHist(breaks, use.mids = TRUE)

imputeLearner(learner, features = NULL)
}
\arguments{
\item{const}{[any]\cr
Constant valued use for imputation.}

\item{multiplier}{[\code{numeric(1)}]\cr
Value that stored minimum or maximum is multiplied with when imputation is done.}

\item{min}{[\code{numeric(1)}]\cr
Lower bound for uniform distribution.
If NA (default), it will be estimated from the data.}

\item{max}{[\code{numeric(1)}]\cr
Upper bound for uniform distribution.
If NA (default), it will be estimated from the data.}

\item{mu}{[\code{numeric(1)}]\cr
Mean of normal distribution. If missing it will be estimated from the data.}

\item{sd}{[\code{numeric(1)}]\cr
Standard deviation of normal distribution. If missing it will be estimated from the data.}

\item{breaks}{[\code{numeric(1)}]\cr
Number of breaks to use in \code{\link[graphics]{hist}}. If missing,
defaults to auto-detection via \dQuote{Sturges}.}

\item{use.mids}{[\code{logical(1)}]\cr
If \code{x} is numeric and a histogram is used, impute with bin mids (default)
or instead draw uniformly distributed samples within bin range.}

\item{learner}{[\code{\link{Learner}} | \code{character(1)}]\cr
Supervised learner. Its predictions will be used for imputations.
If you pass a string the learner will be created via \code{\link{makeLearner}}.
Note that the target column is not available for this operation.}

\item{features}{[\code{character}]\cr
Features to use in \code{learner} for prediction.
Default is \code{NULL} which uses all available features except the target column
of the original task.}
}
\description{
The built-ins are:
\itemize{
  \item \code{imputeConstant(const)} for imputation using a constant value,
  \item \code{imputeMedian()} for imputation using the median,
  \item \code{imputeMode()} for imputation using the mode,
  \item \code{imputeMin(multiplier)} for imputing constant values shifted below the minimum
    using \code{min(x) - multiplier * diff(range(x))},
  \item \code{imputeMax(multiplier)} for imputing constant values shifted above the maximum
    using \code{max(x) + multiplier * diff(range(x))},
  \item \code{imputeNormal(mean, sd)} for imputation using normally
    distributed random values. Mean and standard deviation will be calculated
    from the data if not provided.
  \item \code{imputeHist(breaks, use.mids)} for imputation using random values
    with probabilities calculated using \code{table} or \code{hist}.
  \item \code{imputeLearner(learner, features = NULL)} for imputations using the response
    of a classification or regression learner.
}
}
\seealso{
Other impute: \code{\link{impute}},
  \code{\link{makeImputeMethod}},
  \code{\link{makeImputeWrapper}}, \code{\link{reimpute}}
}


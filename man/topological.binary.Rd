\name{topological.binary}
\alias{topological.binary}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Topological Binary Test
}
\description{
   Performs Topological Binary Test of Alcover et al. (2013) to evaluate the randomness of an RNG. No additional goodness-of-fit test is applied after calculation of test statistic of Topological Binary Test.
}
\usage{
topological.binary(x, B, alpha = 0.05, critical.value)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
     a matrix that includes random data in base-2 format. See details for further information.
}
  \item{B}{
    the length of words (B-bit).
}
  \item{alpha}{
    a predetermined value of significance level with the default value of 0.05.
}
  \item{critical.value}{
    a value used to decide whether to reject the null hypothesis at the significance level of \code{alpha}. See details for further information.
}
}
\details{
The argument \code{x} should be entered as a matrix of bits of dimension \eqn{B}x\eqn{k}, where \eqn{k} is the number of words (integers) generated by the RNG of interest.

The argument \code{critical.value} should be calculated regarding the value of \code{B}. For \eqn{B = 8,...,16}, values of \code{critical.value} are tabulated by Alcover et al. (2013) and calculation procedure of \code{critical.value} for the values greater than 16 is described therein. The tabulated values can be used if the number of words (\eqn{k}) is equal to \eqn{2^B}. Otherwise, it should be calculated over the given cumulative distribution function by Alcover et al. (2013). For example, if \eqn{k=10^4}, then \code{critical.value}\eqn{ = 9245} and if \eqn{k=2*10^4}, then \code{critical.value}\eqn{ = 19999}.

Topological binary test is itself constitutes a goodness-of-fit test based on the number of
different B-bit patterns among the non-overlapping B-bit blocks composed of the input sequence of bits. 
}
\value{ 
\item{statistic}{
     calculated value of the test statistic.
}
\item{result.TBT}{
    returns 0 if H0 is rejected and 1 otherwise.
}
}
\references{
Alcover, P.M., Guillamon, A., Ruiz, M.C., A new randomness test for bit sequences. Informatica  (2013), 24(3), 339--356.  
}
\author{
Haydar Demirhan

Maintainer: Haydar Demirhan <haydarde@hacettepe.edu.tr>
}

\examples{
RNGkind(kind = "Super-Duper")
B=16                          # Bit length is 16.
k=5000                        # Generate 5000 integers.
dat=round(runif(k,0,(2^B-1)))
x=sfsmisc::digitsBase(dat, base= 2, B) #Convert to base 2
alpha = 0.05
critical.value=9245           #Obtained for B = 16
test=topological.binary(x, B, alpha, critical.value)
print(test)
}
\keyword{nonparametric }
\keyword{randomness test }
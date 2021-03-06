\name{GCD}
\alias{GCD}

\title{
Greatest Common Divisor
}
\description{
   Finds the greatest common divisor (GCD) of two integers using a recursive approximation. In addition to the value of GCD, it generates the number of required iterations to find GCD. 
}
\usage{
GCD(x, y, k = 0)
}

\arguments{
  \item{x}{
   the first integer greater than zero.
}
  \item{y}{
   the second integer greater than zero.
}
  \item{k}{
   initial value for counting the number of steps. It must be set zero.
}
}
\value{

\item{k}{
   the number of required iterations to find GCD.
}
\item{g}{
    the value of greatest common divisor.
}
}

\author{
Haydar Demirhan

Maintainer: Haydar Demirhan <haydarde@hacettepe.edu.tr>
}

\examples{
result=GCD(4535,2451)
print(result)

result=GCD(35,2)
print(result)
}



\name{daep}
\alias{daep}
\title{Computing the probability density function (pdf) of asymmetric exponential power (AEP) distribution.}
\description{Computes the pdf of AEP distribution that is given by
\deqn{
f_{X}(x|\Theta)=\left\{\begin{array}{*{20}c}
\frac{1}{2\sigma \Gamma\bigl(1+\frac{1}{\alpha}\bigr)}\exp\biggl\{-\bigg|\frac{\mu-x}{\sigma(1-\epsilon)}\bigg|^{\alpha}\biggr\},~~{}~x \leq \mu,\\
\frac{1}{2\sigma \Gamma\bigl(1+\frac{1}{\alpha}\bigr)}\exp\biggl\{-\bigg|\frac{x-\mu}{\sigma(1+\epsilon)}\bigg|^{\alpha}\biggr\},~~{}~x>\mu,
\end{array} \right.
}
where \eqn{-\infty<x<+\infty}, \eqn{\Theta=(\alpha,\sigma,\mu,\epsilon)^T} with \eqn{0<\alpha \leq 2}, \eqn{\sigma> 0}, \eqn{-\infty<\mu<\infty}, \eqn{-1<\epsilon<1},
and
\deqn{\Gamma(u)=\int_{0}^{+\infty} x^{u-1}\exp\bigl\{-x\bigr\}dx,}
for \eqn{u>0}.
}
\usage{daep(x, alpha, sigma, mu, epsilon, log = FALSE)}
\arguments{
\item{x}{Vector of observation of requested random realizations.}
\item{alpha}{Tail thickness parameter.}
\item{sigma}{Scale parameter.}
\item{mu}{Location parameter.}
\item{epsilon}{Skewness parameter.}
\item{log}{If \code{TRUE}, then \code{log}\eqn{\bigl(f_{X}(x|\Theta)\bigr)} is returned.}
}
\details{Note that if \eqn{\epsilon=0}, then the AEP distribution turns into a normal distribution with mean \eqn{\mu} and standard deviation \eqn{\sqrt{2}\sigma}. When \eqn{\alpha=2}, the AEP distribution is a slight variant of that of }

\value{
Computed pdf of AEP distribution at points of vector \eqn{x}.
}
\references{
G. S. Mudholkar and A. D. Huston, 2001. The epsilon-skew–normal distribution for analyzing near-normal data.\emph{Journal of Statistical Planning and
Inference}, 83, 291-309.
}
\author{Mahdi Teimouri}
\examples{
daep(x = 2, alpha = 1.5, sigma = 1, mu = 0, epsilon = 0.5, log = FALSE)
}

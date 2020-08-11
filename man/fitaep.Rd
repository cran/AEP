\name{fitaep}
\alias{fitaep}
\title{Estimating the parameters of AEP distribution through the expectation-maximization (EM) algorithm}
\description{Estimates the parameters of AEP distribution for which the pdf is given by
\deqn{
f_{X}(x|\Theta)=\left\{\begin{array}{*{20}c}
\frac{1}{2\sigma \Gamma\bigl(1+\frac{1}{\alpha}\bigr)}\exp\biggl\{-\bigg|\frac{\mu-x}{\sigma(1-\epsilon)}\bigg|^{\alpha}\biggr\},~~~x \leq \mu,\\
\frac{1}{2\sigma \Gamma\bigl(1+\frac{1}{\alpha}\bigr)}\exp\biggl\{-\bigg|\frac{x-\mu}{\sigma(1+\epsilon)}\bigg|^{\alpha}\biggr\},~~~x>\mu,
\end{array} \right.
}
where \eqn{-\infty<x<+\infty}, \eqn{\Theta=(\alpha,\sigma,\mu,\epsilon)^T} with \eqn{0<\alpha \leq 2}, \eqn{\sigma> 0}, \eqn{-\infty<\mu<\infty}, and \eqn{-1<\epsilon<1}.
}
\usage{fitaep(x, initial = FALSE, starts)}
\arguments{
\item{x}{Vector of observations.}
\item{initial}{By default is \code{FALSE}. If the initial values are given by user, then set \code{initial=TRUE}.}
\item{starts}{If initial values are not given by user, i.e., \code{initial=FALSE}, then vector \code{starts} must contain the initial values of the parameter vector, i.e., \code{starts}=\eqn{\bigl(\alpha^{(0)}, \sigma^{(0)}, \mu^{(0)}, \epsilon^{(0)} \bigr)} for starting the EM algorithm.}
}
\value{A list of objects in two parts as
\enumerate{
\item The EM estimator for the parameters of AEP distribution.
\item A sequence of goodness-of-fit measures consist of Akaike Information Criterion (\code{AIC}), Consistent Akaike Information Criterion (\code{CAIC}), Bayesian Information Criterion (\code{BIC}), Hannan-Quinn information criterion (\code{HQIC}), Anderson-Darling (\code{AD}), Cram\'{e}er-von Misses (\code{CVM}), Kolmogorov-Smirnov (\code{KS}), and log-likelihood (\code{log-likelihood}) statistics.
}
}
\references{
A. P. Dempster, N. M. Laird, and D. B. Rubin, 1977. Maximum likelihood from incomplete data via the EM algorithm, \emph{Journal of the Royal Statistical Society Series B}, 39, 1-38.
}
\author{Mahdi Teimouri}
\examples{
x <- raep(n=50, alpha=.8, sigma=1, mu=0, epsilon=0.5)
fitaep(x, initial = FALSE, starts)
}

\name{regaep}
\alias{regaep}
\title{Robust linear regression analysis when error term follows AEP distribution}
\description{Estimates parameters of the multiple linear regression model through EM algorithm when error term follows AEP distribution. The regression model is given by
\deqn{y_{i}=\beta_{0}+\beta_{1} x_{i1}+\cdots+ \beta_{k} x_{ik}+\nu_{i},~~ i=1,\cdots,n,}
where \eqn{\beta_{0},\beta_{1},\cdots,\beta_{k}} are the regression coefficients and \eqn{\nu} is the error term follows a zero-location AEP distibution with pdf given by
\deqn{
f_{X}(x|\Theta)=\left\{\begin{array}{*{20}c}
\frac{1}{2\sigma \Gamma\bigl(1+\frac{1}{\alpha}\bigr)}\exp\biggl\{-\Big|\frac{-x}{\sigma(1-\epsilon)}\Big|^{\alpha}\biggr\},~~{}~x \leq 0,\\
\frac{1}{2\sigma \Gamma\bigl(1+\frac{1}{\alpha}\bigr)}\exp\biggl\{-\Big|\frac{x}{\sigma(1+\epsilon)}\Big|^{\alpha}\biggr\},~~{}~x> 0,
\end{array} \right.
}
where \eqn{-\infty<x<+\infty}, \eqn{\Theta=(\alpha,\sigma,\epsilon)^T} with \eqn{0<\alpha \leq 2}, \eqn{\sigma> 0}, \eqn{-1<\epsilon<1}, and
\deqn{\Gamma(u)=\int_{0}^{+\infty} x^{u-1}\exp\bigl\{-x\bigr\}dx,}
for \eqn{u>0}.
}
\usage{regaep(y, x)}
\arguments{
\item{y}{Vector of response observations of length \eqn{n}.}
\item{x}{A \eqn{n\times k} array of covariate(s).}
}
\value{
A list of estimated regression coefficients, estimated parameters of error term, F statistic, R-square, and adjusted R-square.
}
\references{
A. P. Dempster, N. M. Laird, and D. B. Rubin, 1977. Maximum likelihood from incomplete data via the EM algorithm, \emph{Journal of the Royal Statistical Society Series B}, 39, 1-38.
}
\author{Mahdi Teimouri}
\examples{
x <- seq(-5, 5, 0.1)
y <- 2 + 2*x + raep( length(x), alpha = 1, sigma = 0.5, mu = 0, epsilon = 0.5)
regaep(y, x)
}


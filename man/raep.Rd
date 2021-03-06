\name{raep}
\alias{raep}
\title{Simulating realizations from the asymmetric exponential power (AEP) distribution}
\description{Simulates realizations from AEP distribution with quantile function given by
\deqn{
F^{-1}(u|\Theta)=\left\{\begin{array}{*{20}c}
\mu-\sigma(1-\epsilon)\biggl[\frac{\gamma\bigl(\frac{1-\epsilon-2u}{1-\epsilon},\frac{1}{\alpha}\bigr)}{\Gamma\bigl(\frac{1}{\alpha}\bigr)}\biggr]^{\frac{1}{\alpha}},~{{}}~u\leq \frac{1-\epsilon}{2},\\
\mu+\sigma(1+\epsilon)\biggl[\frac{\gamma\bigl(\frac{2u+\epsilon-1}{1+\epsilon},\frac{1}{\alpha}\bigr)}{\Gamma\bigl(\frac{1}{\alpha}\bigr)}\biggr]^{\frac{1}{\alpha}},~{{}}~u> \frac{1-\epsilon}{2}.\\
\end{array} \right.
}
where \eqn{0<u<1}, \eqn{\Theta=(\alpha,\sigma,\mu,\epsilon)^T} with \eqn{0<\alpha \leq 2}, \eqn{\sigma> 0}, \eqn{-\infty<\mu<\infty}, and \eqn{-1<\epsilon<1}.
}
\usage{raep(n, alpha, sigma, mu, epsilon)}
\arguments{
\item{n}{Number of requested realizations}
\item{alpha}{Tail thickness  parameter}
\item{sigma}{Scale parameter}
\item{mu}{Location parameter}
\item{epsilon}{Skewness parameter}
}
\value{
A vector of length \code{n}, consists of the random generated values from AEP distribution.
}
%\references{}
\author{Mahdi Teimouri}
\examples{
raep(n = 100, alpha = 1.5, sigma = 1, mu = 0, epsilon = 0.5)
}

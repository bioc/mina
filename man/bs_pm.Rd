% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/all_generics.R
\name{bs_pm}
\alias{bs_pm}
\title{Inferring the network of different group of samples and test significance by
permutation.}
\usage{
bs_pm(x, group, ...)
}
\arguments{
\item{x}{An object of class `mina` with `norm` and `des` defined.}

\item{group}{The column name of descriptive file `des` for comparison.}

\item{...}{Additional parameters.}
}
\value{
The network bootstrap and permutation result.
}
\description{
Inferring the network of different group of samples and test significance by
permutation.
}
\examples{
maize <- new("mina", tab = maize_asv2, des = maize_des2)
maize <- norm_tab(maize, method = "raref")
maize <- fit_tabs(maize)
maize <- get_rep(maize, top = 5)
maize <- bs_pm(maize, group = "Compartment", per = 0.5)
}

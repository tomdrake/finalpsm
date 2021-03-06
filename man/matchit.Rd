% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matchit.R
\name{matchit}
\alias{matchit}
\title{Wrapper for MatchIt package}
\usage{
matchit(.data, strata, explanatory, id = NULL, dependent = NULL,
  method = "full", keep_col = F, keep_unmatch = T, ...)
}
\arguments{
\item{.data}{Dataframe}

\item{strata}{Column name of the binary treatment indicator (this variable must only have 2 levels).}

\item{explanatory}{Vector of column names containing variables used to estimate the propensity score (pre-treatment covariates).}

\item{id}{Vector of column names containing patient identification variables that are to be retained following matching (no use within MatchIt::matchit()).}

\item{dependent}{Vector of column names containing dependent (outcome) variables that are to be retained following matching (no use within MatchIt::matchit()).}

\item{method}{As per MatchIt::matchit(). This argument specifies a matching method. Currently, "exact" (exact matching), "full" (full matching), "genetic" (genetic matching), "nearest" (nearest neighbor matching), "optimal" (optimal matching), and "subclass" (subclassification) are available. The default is "nearest". Note that within each of these matching methods, MatchIt offers a variety of options.}

\item{keep_col}{Keep all columns within the original dataset (default = FALSE)}

\item{keep_unmatch}{Keep unmatched patients within the output (default = TRUE)}

\item{...}{Additional arguments to be passed to a variety of matching methods.}
}
\value{
Nested list of (1) "object" - the MatchIt::matchit() output and (2) "data": the matched dataset.
}
\description{
matchit is the main command of the package MatchIt, which enables parametric models for causal inference to work better by selecting well-matched subsets of the original treated and control groups. This function acts as a wrapper to facilitate propensity-score matching with a tidyverse approach.
}

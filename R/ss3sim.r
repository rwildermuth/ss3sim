#' ss3sim: Fisheries stock assessment simulation testing with Stock Synthesis
#'
#' The \pkg{ss3sim} \R package is designed to facilitate rapid, reproducible,
#' and flexible simulation with the widely-used Stock Synthesis 3 (SS3)
#' statistical catch-at-age stock assessment framework.
#'
#' An \pkg{ss3sim} simulation requires three types of input: (1) a base
#' model of the underlying truth (an SS3 operating model), (2) a base
#' model of how you will assess that truth (an SS3 estimation model),
#' (3) and a set of cases that deviate from these base models that you
#' want to compare (configuration arguments provided as plain-text
#' cases files).
#'
#' You can find examples of these SS3 operating and estimation models
#' within the package data (\code{inst/extdata/models/}). The package
#' data also contains example plain-text control files in the folder
#' \code{inst/extdata/cases} and \code{inst/extdata/eg-cases}.
#'
#' The main \pkg{ss3sim} functions are divided into three types:
#'
#' 1. \code{change} functions that manipulate SS3 configuration files.
#' These manipulations generate an underlying "truth" (operating
#' models) and control our assessment of those models (estimation
#' models).
#' \itemize{
#' \item \code{\link{change_f}}: Controls fishing mortality.
#'
#' \item \code{\link{change_tv}}: Adds time-varying features. For
#' example, time-varying natural mortality, growth, or selectivity.
#'
#' \item \code{\link{change_lcomp}}: Controls how length composition
#' data are sampled.
#'
#' \item \code{\link{change_agecomp}}: Controls how age composition
#' data are sampled.
#'
#' \item \code{\link{change_index}}: Controls how the fishery and
#' survey indices are sampled.
#'
#' \item \code{\link{change_e}}: Controls which and how parameters are
#' estimated.
#'
#' \item \code{\link{change_retro}}: Controls the number of years to
#' discard for a retrospective analysis.
#'
#' \item \code{\link{change_rec_devs}}: Substitutes recruitment
#' deviations.
#' }
#'
#' 2. \code{run} functions that conduct simulations. These functions
#' generate a folder structure, call manipulation functions, run SS3
#' as needed, and save the output.
#' \itemize{
#' \item \code{\link{run_ss3sim}}: Main function to run \pkg{ss3sim}
#' simulations.
#'
#' \item \code{\link{ss3sim_base}}: Underlying base simulation
#' function. Can also be called directly.
#' }
#'
#' 3. \code{get} functions for synthesizing the output.
#' \itemize{
#' \item \code{\link{get_results_scenario}}: Extract the results for a
#' single scenario.
#'
#' \item \code{\link{get_results_all}}: Extract results from a series
#' of scenarios.
#' }
#'
#' See the package vignette \code{vignette("ss3sim-vignette")} for
#' more extensive explanation of how to use the \pkg{ss3sim} \R package.
#'
#' \pkg{ss3sim} was developed by graduate students and post doctoral researchers
#' at the University of Washington (School of Aquatic and Fishery Sciences and
#' Quantitative Ecology and Resource Management departments) and Simon Fraser
#' University. The authors of individual functions are listed within the
#' function documentation and all contributors are listed in the
#' \code{DESCRIPTION} file.
#'
#' If you are using \pkg{ss3sim} in a publication, please cite the package as
#' indicated by running \code{citation("ss3sim")} in the \R console.
#'
#' @docType package
#' @name ss3sim
NULL

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run_ss3model.r
\name{rename_ss3_files}
\alias{rename_ss3_files}
\title{Rename Stock Synthesis version-specific files}
\usage{
rename_ss3_files(path, ss_bin, extensions)
}
\arguments{
\item{path}{The path to the folder with the files.}

\item{ss_bin}{A character value giving the Stock Synthesis binary name}

\item{extensions}{A character vector of file extensions to rename without
periods preceding the values.}
}
\description{
Rename Stock Synthesis version-specific files
}
\details{
Renaming the files from the name of the executable that was used plus the
relevant extension to Stock Synthesis plus the relevant extension allows users to use
any executable, such as ss_safe.exe. Renaming, particularly of the files
in the OM folder allows for other functions to expect ss.par instead of
random.par. This consistency is not as relevant now that we are using the
control file instead of the par file for most of the parameter manipulation.
}
\author{
Sean C. Anderson
}

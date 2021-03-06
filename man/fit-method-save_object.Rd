% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit.R
\name{fit-method-save_object}
\alias{fit-method-save_object}
\alias{save_object}
\title{Save fitted model object to a file}
\description{
This method is a wrapper around \code{\link[base:readRDS]{base::saveRDS()}} that ensures
that all posterior draws and diagnostics are saved when saving a fitted
model object. Because the contents of the CmdStan output CSV files are only
read into R lazily (i.e., as needed), the \verb{$save_object()} method is the
safest way to guarantee that everything has been read in before saving.
}
\section{Usage}{
\preformatted{$save_object(file, ...)
}
}

\section{Arguments}{

\itemize{
\item \code{file}: (string) Path where the file should be saved.
\item \code{...}: Other arguments to pass to \code{\link[base:readRDS]{base::saveRDS()}} besides \code{object} and \code{file}.
}
}

\examples{
\dontrun{
fit <- cmdstanr_example("logistic")

temp_rds_file <- tempfile(fileext = ".RDS")
fit$save_object(file = temp_rds_file)
rm(fit)

fit <- readRDS(temp_rds_file)
fit$summary()
}

}
\seealso{
\code{\link{CmdStanMCMC}}, \code{\link{CmdStanMLE}}, \code{\link{CmdStanVB}}, \code{\link{CmdStanGQ}}
}

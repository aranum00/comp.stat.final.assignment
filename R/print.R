#' Print method for tsdata objects
#'
#' This method prints a compact summary of a \code{tsdata} object.
#'
#' @param x A tsdata object created by \code{tsdata()}.
#' @param ... Additional arguments.
#' @export
print.tsdata <- function(x, ...) {
  cat("<tsdata object>\n")
  cat("Number of observations:", length(x$data), "\n")
  cat("Start date:", format(min(x$dates)), "\n")
  cat("End date:", format(max(x$dates)), "\n")
  invisible(x)
}

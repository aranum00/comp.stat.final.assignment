#' Summary method for tsdata objects
#'
#' This method returns a summary of a \code{tsdata} object.
#'
#' @param object A tsdata object created by \code{tsdata()}.
#' @param ... Additional arguments.
#' @return A list with summary statistics.
#' @export
summary.tsdata <- function(object, ...) {
  summary_stats <- list(
    start_date = min(object$dates),
    end_date = max(object$dates),
    n = length(object$data),
    mean = mean(object$data),
    median = median(object$data),
    sd = sd(object$data),
    min = min(object$data),
    max = max(object$data)
  )
  class(summary_stats) <- "summary.tsdata"
  summary_stats
}

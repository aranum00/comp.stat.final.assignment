# Define the constructor
new_tsdata <- function(data = numeric(), dates = as.Date(character())) {
  structure(
    list(data = data, dates = dates),
    class = "tsdata"
  )
}

# Define the validator
validate_tsdata <- function(x) {
  if (!is.numeric(x$data)) stop("data must be numeric")
  if (!inherits(x$dates, "Date")) stop("dates must be Date class")
  if (length(x$data) != length(x$dates)) stop("data and dates must be the same length")
  TRUE
}

# Define the helper
#' Create a tsdata time series object
#' @param data Numeric vector of values
#' @param dates Date vector of same length as data
#' @return A tsdata object
#' @export
tsdata <- function(data, dates) {
  x <- new_tsdata(data, dates)
  validate_tsdata(x)
  x
}

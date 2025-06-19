#' Plot a tsdata object
#'
#' This method creates a ggplot of a \code{tsdata} object using \code{ggplot2}.
#' The time series data is visualized with dates on the x-axis and values on the y-axis.
#'
#' @param x A \code{tsdata} object created by \code{tsdata()}.
#' @param y Ignored.
#' @param ... Additional arguments.
#'
#' @return The input \code{x}.
#' @export
#' @importFrom ggplot2 ggplot aes geom_line labs theme_minimal
#'
#' @examples
#' dates <- as.Date("2023-01-01") + 0:4
#' values <- c(10, 12, 15, 13, 17)
#' ts_obj <- tsdata(values, dates)
#' plot(ts_obj)
plot.tsdata <- function(x, y = NULL, ...) {
  df <- data.frame(date = x$dates, value = x$data)

  p <- ggplot2::ggplot(df, ggplot2::aes(x = date, y = value)) +
    ggplot2::geom_line() +
    ggplot2::labs(
      title = "Time Series Plot",
      x = "Date",
      y = "Value"
    ) +
    ggplot2::theme_minimal()

  print(p)

  invisible(x)
}

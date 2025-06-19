library(tinytest)
library(comp.stat.final.assignment)

# Test constructor with valid input
data <- 1:5
dates <- as.Date("2023-01-01") + 0:4
x <- tsdata(data, dates)
expect_true(inherits(x, "tsdata"))
expect_equal(length(x$data), 5)
expect_equal(length(x$dates), 5)

# Test constructor errors on invalid input
expect_error(tsdata("not numeric", dates), "data must be numeric")
expect_error(tsdata(data, as.character(dates)), "dates must be Date class")
expect_error(tsdata(1:3, as.Date("2023-01-01") + 0:4), "data and dates must be the same length")

# Test summary output
sum_x <- summary(x)
expect_true(is.list(sum_x))
expect_true(all(c("start_date", "end_date", "n", "mean", "median", "sd", "min", "max") %in% names(sum_x)))
expect_equal(sum_x$n, 5)

# Test print
expect_silent(print(x))

# Test plot
expect_silent(plot(x))

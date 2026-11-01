data <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)

cal_mean <- function(x) {
  sum(x) / length(x)
}

cal_sd <- function(x) {
  data_mean <- cal_mean(x)
  sum_of_square <- sum((x - data_mean)^2)
  (sum_of_square / data_mean)^0.5
}

cal_sd(c(1, 2, 3, 4, 5, 6))

cal_cv <- function(x) {
  cal_sd(x) / cal_mean(x)
}

convert_to_percent <- function(total_cv) {
  cv_percent <- total_cv * 100
  (cv_percent)
}

cv <- cal_cv(data)

print(convert_to_percent(cv))

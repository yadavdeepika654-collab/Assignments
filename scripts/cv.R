
cal_mean <- function(x) {
  sum(x) / length(x)
}

cal_sd <- function(x) {
  data_mean <- cal_mean(x)
  sum_of_square <- sum((x - data_mean) ^ 2)
  (sum_of_square / data_mean) ^ 0.5
}

cal_sd(c(1,2,3,4,5,6))


x <- c(2, 3, 20, 40, 20, 2, 1)
cal_mean <- function(x) {
  sum_x <- sum(x)
  n <- length(x )
  my_mean <- sum_x/n 
  return(my_mean)
}
cal_mean(x)

cal_sd <- function(x) {
  my_mean <- cal_mean(x)
  n <- length(x)
  my_sd <- sqrt(sum((x - my_mean)^2) / (n-1))
  return(my_sd)
}
cal_sd(x)
eza

cal_cv <- function(x) {
  my_mean <- cal_mean (x)
  my_sd <- cal_sd(x)
  my_cv <- my_sd / my_mean
  return(my_cv)
}
cal_cv(x)

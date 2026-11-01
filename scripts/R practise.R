dbh <- 28.1
ba <-pi * (dbh^2) / 40000
ba
girth_num  <-50          #numeric
girth_string <- "20"          #string
is_medium   <- TRUE        #logical
girth_measurement <-55L         #integerhaina
typeof(girth_num)
class(girth_num)  <-50 
class(girth_measurement)
is.logical(is_medium )
is.numeric(girth_num)
is.string(girth_string )
is.string(girth_string)
is.character(girth_string)
as.character(girth_num)
as.numeric(girth_measurement)
forest_type <- c("community","private", "community","protector")
forest_factor <-as.factor(forest_type)
class(forest_factor)
levels(forest_factor)
plot_code_factor <- factor(c("101", "102", "103"))
as.numeric(as.character(plot_code_factor))
mixed_vec <-c("28.4", TRUE,"Schima")
species_chr <-c("shorea robusta", "pinus roxburghii")
species_chr == "shorea robusta" #FALSE
species_chr !="pinus roxburghii" #TRUE
if (dbh >=30) {
 cat("classification: sawtimber tree\n")
}else if (dbh >= 10) {
    cat("classification: Pole-sized tree\n")
}else {
    cat("classification: Sapling\n")
}
tree_dbh <- c(28.4,35.1,17.8,42.0,22.4)
tree_ba <- pi * (trees_dbh^2) / 40000
ba
round(trees_ba, digis =4)
test_tree <-c(28.4,35.1,17.8,42.0,22.4)

calculate_basal_area <- function(dbh_cm) {
    if (!is.numeric(dbh_cm)) {
        stop("error1")
    }
    if (any(dbh_cm <= 0, na.rm =TRUE)) { 
        stop("error2")
    }
    if (any(dbh_cm > 150, na.rm =TRUE)) {
        stop("error3")
    }
    ba_m2 <- pi * (dbh_cm^2) / 40000
    return (ba_m2)
}

calculate_basal_area(4.5)
trees <- read.csv("./Data/Raw/unit2_starter_trees (1).csv")
head(trees)
tail(trees)
dim(trees)
nrow(trees)
names(trees)
str(trees)
trees$dbh_cm


calculate_cv <- function(dbh_cm) {
  # na.rm = TRUE drops missing data points so the calculation doesn't fail
  mean_val <- mean(dbh_cm, na.rm = TRUE)
  sd_val   <- sd(dbh_cm, na.rm = TRUE)
  
  # Math formula: (Standard Deviation / Mean) * 100
  cv_percentage <- (sd_val / mean_val) * 100
  
  return(cv_percentage)
}
calculate_cv(trees$dbh_cm)
trees$dbh_cm
# Working directory
# cd D:/Assignments

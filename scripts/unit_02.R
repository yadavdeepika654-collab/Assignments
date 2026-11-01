inv <-read.csv("./data/raw/bagmati_raw_inventory.csv")

head(inv)
dim(inv)
nrow(inv)
ncol(inv)
print(row)
str(inv)
class(inv)

class(inv$Species)

is.na(inv$DBH_cm)
sum(is.na(inv$DBH_cm))
missing_dbh <- sum(is.na(inv$DBH_cm))
missing_height <- sum(is.na(inv$Height_m))

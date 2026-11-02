bio <- read.csv("./data/raw/bagmati_raw_inventory.csv")

dim(bio)
str(bio)
summary(bio)

unique(bio$Plot_ID)
unique(bio$Stand_ID)
unique(bio$Tree_ID)
unique(bio$Species)

bio[
  bio$Species == "S. robusta" | bio$Species == "Shorea rubusta",
]$Species <- "Shorea robusta"

unique(bio$Species)

bio[bio$Species == "Schima wallichi", ]$Species <- "Schima wallichii"

unique(bio$Species)

bio[bio$Species == "C. indica", ]$Species <- "Castanopsis indica"

unique(bio$Species)

cal_agb <- function(wd, dbh, ht) {
  0.0673 * ((wd * dbh^2 * ht)^0.976)
}

cal_agb(bio$Wood_density, bio$DBH_cm, bio$Height_m)

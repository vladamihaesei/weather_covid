library(rgdal)
library(sp)
library(raster)
library(reshape)


r <- raster("Grids/")
rc <- function(x1) {
  #x1 - NDVI
  #x2 - Pv
  #x3 - Palfa.B4
  #x4 - C10
  ifelse(x1 == 1, 3, 
         ifelse((x1 > 1) & (x1 <= 4), 2, 
                1))
}

r.class <- overlay(r, fun=rc)
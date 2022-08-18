## packages I want loaded for all pages of my site
suppressPackageStartupMessages({
  library(dplyr)
  library(tidyr)
  library(stringr)
  library(stringdist)
  library(osmdata)
  library(osrm)
  library(ggplot2)
  library(h3)
  library(RcppRoll)
  library(readr)
  
  library(kableExtra)
  
  library(sp)
  library(sf)
  library(rnaturalearth)        # to get geo shapes
  library(rnaturalearthhires)   # same as above
  
  library(spacetime)
  library(STPtrajectories)
})


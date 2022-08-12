# utils.R


#url <- "https://dwr.virginia.gov/fishing/trout-stocking-schedule/?start_date=January+1%2C+2015&end_date=January+3%2C+2022"



make_line <- function(lonlat) { lonlat %>% as.matrix() %>% sf::st_linestring() }

make_point <- function(lon, lat, crs=4326) {
  sf::st_point(c(lon,lat)) %>% sf::st_sfc() %>% sf::st_set_crs(crs)
}


crd_to_points <- function(lon,lat, CRS=4326) {
  d <- lapply(1:length(lon), function(i) {sf::st_point(c(lon[i],lat[i]))})
  return(d %>% sf::st_sfc(crs=CRS))
}


# NOT USED
find_close_match <- function(s, v) {
  stringdist::stringdist(s, v, method="jw")
}


# convert osmdata bbox to pgon
bbox_to_pgon <- function(v, CRS=4326) {
  x <- v %>% as.vector()
  if (!anyNA(x)) {
    names(x) <- c("xmin", "ymin","xmax","ymax")
    pgon <- x %>% sf::st_bbox() %>% sf::st_as_sfc() %>% sf::st_set_crs(CRS)
  } else {
    pgon <- NA
  }
  return(pgon) 
}

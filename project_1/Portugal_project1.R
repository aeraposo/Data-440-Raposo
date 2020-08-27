# Projecting, Plotting and Labelling Administrative Subdivisions
# https://tyler-frazier.github.io/dsbook/describe.html#projecting-plotting-and-labelling-administrative-subdivisions

# This package will be used to analyze and describe the various features in our data
# the tidyverse is a collection of libraries- each of which works better on different types of data
#install.packages("tidyverse", dependencies = TRUE)
# Library() makes the package functions available for use here
library(tidyverse)

# install sf (simple features) package, works well with tidyverse libraries and will help us analyze spatial data
#install.packages("sf", dependencies = TRUE)
library(sf)

# NOTE- ONE YOU RUN THE INSTALL PACKAGES LINES, YOU WON'T NEED THEM AGAIN (LIKE... EVER)
# You'll only need to run the library('lib name you want') commands

# Clear your workspace
rm(list=ls(all=TRUE))

# set your working directory
setwd("/Users/aeraposo/Data-440-Raposo/project_1")

# Remotely sensed vs. secondary data (satellite collected vs. reported data)
# different file types we'll work with (.shp, .prj, .dbf)

# create object that stores the spatial data from the portugal .shp file
port_int  <- read_sf("gadm36_PRT_shp/gadm36_PRT_0.shp")
# show me some info about the geometry of the country
st_geometry(port_int)

# use ggplot (a graphics library) to make a plot of the country
library(ggplot2)
# data = .shp file object, size = line size, alpha = transparency (between 0 and 1), color = 'boarder color', fill = 'fill color'
ggplot() +
  geom_sf(data = port_int, size = 1.5, color = 'gold', fill = 'green', alpha = .5)

# plot with title
ggplot() +
  geom_sf(data = port_int,
          size = 1.5,
          color = "gold",
          fill = "green",
          alpha = 0.5) +
  geom_sf_text(data = port_int,
               aes(label = 'NAME_0'),
               size = 1.5,
               color = "black")

# Projecting, Plotting and Labelling Administrative Subdivisions

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
rm(list=ls(all=TRUE))rm(list=ls(all=TRUE))

# set your working directory
setwd("/Users/aeraposo/Data-440-Raposo/project_1")

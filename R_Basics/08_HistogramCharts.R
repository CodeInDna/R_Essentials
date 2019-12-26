# File: 08_HistogramCharts.R
# Project: Baiscs_R

# INSTALL AND LOAD PACKAGES ##########################

# pacman must already be installed; then load contributed 
# packages (including pacman) with pacman
pacman::p_load(pacman, tidyverse)

# LOAD DATA ##########################################

# Using the diamonds dataset from ggplot2
?diamonds  # Get info about diamonds dataset
diamonds   # Display the begining of the dataset


# HISTOGRAM ##########################################

?hist

# Histogram with defaults
hist(diamonds$price)

# Histogram with options
hist(diamonds$price,
     breaks = 7,   # Suggest number of breaks
     main = "Histogram of Price of Diamonds",
     sub = "(Source: ggplot2::diamonds)",
     ylab = "Frequency",
     xlab = "Price of Diamonds",
     col = "red3"
     )
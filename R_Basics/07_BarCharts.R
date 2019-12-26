# File: 06_BarCharts.R
# Project: Baiscs_R

# INSTALL AND LOAD PACKAGES ##########################

# pacman must already be installed; then load contributed 
# packages (including pacman) with pacman
pacman::p_load(pacman, tidyverse)

# LOAD DATA ##########################################

# Using the diamonds dataset from ggplot2
?diamonds  # Get info about diamonds dataset
diamonds   # Display the begining of the dataset

# BARPLOT OF FREQUENCIES #############################
?plot    # Get info on "Generic X-Y Plotting"
?barplot # GEt info on the "Bar Plots" function

# Shortest method to make a barplt
plot(diamonds$cut)

# Similar process using pipes
diamonds %>%
  select(color) %>%
  plot()

# Similar code using barplot; doesn't work
diamonds %>%
  select(clarity) %>%
  barplot()  # Error: 'height' must be a vector or a matrix

# Try again with table()
diamonds %>%
  select(clarity) %>%
  table() %>%  # Put data in a appropriate format
  barplot()

# Sort bar by descending values(not for ordinal X)
diamonds %>%
  select(clarity) %>%
  table() %>%  # Put data in a appropriate format
  sort(decreasing = T) %>%  # Sort table
  barplot()

# Adding options to plot
diamonds %>%
  select(clarity) %>%
  table() %>%
  barplot(
    main = "Clarity of Diamonds",
    sub = "(Source: ggplot2::diamonds)",
    horiz = T,  # Draw Horizontal bars,
    ylab = "Clarity of Diamonds",
    xlab = "Frequency",
    xlim = c(0, 15000),  # Limits for x axis
    border = NA,  # No borders on bars
    col = '#CD0000'  # "red3"
    )


# SIDE BY SIDE BARPLOT OF FREQUENCIES #############

# 100% stacked bar
diamonds %>%
  select(color, clarity) %>%
  plot()

# Stacked bars: step 1: create table
df <- diamonds %>%
  select(color,clarity) %>%
  table() %>%
  print()  # show table in console

# Stacked bars: step 1: create table
df %>%
  barplot(
    legend = rownames(.))  # Draw plot w/legend
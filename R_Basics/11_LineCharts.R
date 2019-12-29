# File: 11_LineCharts.R
# Project: Baiscs_R

# INSTALL AND LOAD PACKAGES ##########################

# pacman must already be installed; then load contributed 
# packages (including pacman) with pacman
pacman::p_load(pacman, tidyverse, rio)
# pacman: for loading/unloading packages
# rio: for importing data
# tidyverse: for so many reasons

# Load Base packages manually
library(datasets)

# SINGLE TIME SERIES
?uspop   # Get info about data
uspop    # Display Data

?ts     # Get info about time-series object

# Plot with default plot()
plot(uspop)

# Plot with options
uspop %>%
  plot(
    main = "US population 1790-1970",
    sub = "(Source: datasets::uspop)",
    xlab = "Year",
    ylab = "Population (in millions)"
  )

abline(v=1930, col = 'red')
text(1930, 10, "1930", col = "blue3")
abline(v=1940, col = 'red')
text(1940, 2, "1940", col = "blue3")

# Plot with ts.plot()
?ts.plot
# Althoough this can be used for a single time series, plot 
# is easier to use and is preferred
ts.plot(uspop)

# Plot with plot.ts()
# More powerful alternative
?plot.ts
plot.ts(uspop)

# MULTIPLE TIME SERIES ############################################

# EuStockMarkets
?EuStockMarkets
EuStockMarkets

# Three different plot functions
plot(EuStockMarkets)         # Stacked windows
plot.ts(EuStockMarkets)      # Stacked windows
ts.plot(EuStockMarkets)      # One Window

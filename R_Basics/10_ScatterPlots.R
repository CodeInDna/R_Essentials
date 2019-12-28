# File: 10_ScatterPlots.R
# Project: Baiscs_R

# INSTALL AND LOAD PACKAGES ##########################

# pacman must already be installed; then load contributed 
# packages (including pacman) with pacman
pacman::p_load(pacman, tidyverse)

# LOAD DATA ##########################################
df <- import("Datasets/StateData.xlsx") %>%
  as_tibble() %>%
  select(state_code,
         psychRegions,
         instagram:modernDance
  ) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print()


# SCATTERPLOTS ##########################################

df %>%
  select(instagram:modernDance) %>%
  plot()   # Plot all associations

# Bivariate scatterplot with defaults
df %>%
  select(scrapbook:modernDance) %>%
  plot()   

# Bivariate scatterplot with options
df %>%
  select(scrapbook:modernDance) %>%
  plot(
    main = "ScatterPlot of Google Searches by State",
    xlab = "Seacher for \"ScrapBook\"",
    ylab = "Seacher for \"modern dance\"",
    col = "red",
    pch = 20      # Plotting character (small circle)
  )

?pch

# Add fit linear regression line (y~x)
df %>%
  lm(modernDance ~ scrapbook, data=.) %>%   # lm =Linear model, ~ = y is a function of x, data=.: grap the data df
  abline()  # draw a line

# REMOVE OUTLIER

# Identify Outlier
df %>%
  select(state_code, scrapbook) %>%
  filter(scrapbook > 4)  %>%   # filter the outlier
  print()

# Bivariate scatterplot witout outlier
df %>%
  select(scrapbook:modernDance) %>%
  filter(scrapbook < 4) %>%
  plot(
    main = "ScatterPlot of Google Searches by State",
    xlab = "Seacher for \"ScrapBook\"",
    ylab = "Seacher for \"modern dance\"",
    col = "red",
    pch = 20      # Plotting character (small circle)
  )

# Add fit line without outlier
df %>%
  filter(scrapbook < 4) %>%
  lm(modernDance ~ scrapbook, data=.) %>%   # lm =Linear model, ~ = y is a function of x, data=.: grap the data df
  abline()  # draw a line

# File: 20_Contingency.R
# Project: Baiscs_R

# INSTALL AND LOAD PACKAGES ##########################

# pacman must already be installed; then load contributed 
# packages (including pacman) with pacman
pacman::p_load(pacman, tidyverse, rio)
# pacman: for loading/unloading packages
# rio: for importing data
# tidyverse: for so many reasons

# LOAD AND PREPARE DATA ##############################

# Save data to "df" (for data frame)
# Rename outcome as "y" 
# Specify outcome with df$y

df <- import("Datasets/StateData.xlsx") %>%
  as_tibble()  %>%
  select(state_code, region, psychRegions) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print()

# ANALYZE DATA #######################################

# Create Contingency Table
ct <- table(df$region, df$psychRegions)
ct

# Call also get cell, row and column %
# With rounding to get just 2 decimal places
# Multiplied by 100 to make %

p_load(magrittr) # to get arithmetic aliases

# Row percentages
ct %>%
  prop.table(1) %>% # 1 row percentages
  round(2) %>%
  multiply_by(100)

# Column percentages
ct %>%
  prop.table(2) %>% # 1 row percentages
  round(2) %>%
  multiply_by(100)

# Total percentages
ct %>%
  prop.table() %>% # 1 row percentages
  round(2) %>%
  multiply_by(100)

# Chi-square Test
tchi <- chisq.test(ct)
tchi

# Additional Tables
tchi$observed
tchi$expected
tchi$residuals
tchi$stdres

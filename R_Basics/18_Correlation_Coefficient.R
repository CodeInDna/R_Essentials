# File: 18_Correlation_Coefficient.R
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
  select(instagram:modernDance) %>%
  print()

# CORRELATION MATRIX #################################
cor(df)

# Rounded to 2 decimals
df %>%
  cor() %>%
  round(2)

# SINGLE CORRELATION #################################

# Can test one pair of variables at a time
# Gives r, hypothesis test, and confidence Interval
cor.test(df$instagram, df$privacy)

# P-VALUE FOR MATRIX #################################
# Install "Hmisc" package to get p-values for matrix
p_load(Hmisc)

# Need to coerce from dataframe to matrix to get both a 
# correlation matrix and p-values(in separate tables)
df %>%
  as.matrix() %>%
  rcorr()

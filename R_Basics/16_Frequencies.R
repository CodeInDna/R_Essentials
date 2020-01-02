# File: 16_Frequencies.R
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
  select(state_code,
         region,
         psychRegions,
         instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%  # as.factor change it to categorical value
  print()

# SUMMARIZE DATAFRAME ############################
?summary
summary(df)  # Gives frequencies for factor datatype and summary for numeric data type

# SUMMARIZE CATEGORICAL VARIABLE #################

# "region" is a character variable
# summary is not very useful for character variable
df %>%
  select(region) %>%
  summary()

# table works better
df %>%
  select(region) %>%
  table()

# summary works best for categorical variable
df %>%
  select(psychRegions) %>%
  summary()

# table works better
df %>%
  select(psychRegions) %>%
  table()

# summarize multiple factors
df %>%
  mutate(region = as.factor(region)) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%
  print()

summary(df)

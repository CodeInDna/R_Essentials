# File: 13_Selecting.R
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

# FILTER BY ONE VARIABLE ##############################
df %>%
  filter(entrepreneur > 1)%>%
  print()

df %>%
  filter(region == 'South')%>%
  print()

df %>%
  filter(psychRegions == 'Relaxed and Creative')%>%
  print()

# FILTER BY MULTIPLE VARIABLE ##############################

# 'or' is the vertical pipe |
df %>%
  filter(region == "South" |
           psychRegions == "Relaxed and Creative") %>%
  print()

# 'and' is the ampersand &
df %>%
  filter(region == "South" &
           psychRegions == "Relaxed and Creative") %>%
  print()

# 'not' is the exclaimation point !
df %>%
  filter(region == "South" &
           !psychRegions == "Relaxed and Creative") %>%
  print()

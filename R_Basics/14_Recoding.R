# File: 14_Recoding.R
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

# COMBINE CATEGORIES WITH RECODE ######################

df %>%
  mutate(relaxed = recode(psychRegions,
      "Relaxed and Creative" = "yes",
      "Friendly and Conventional" = "no",
      .default = "no"
      )) %>%
  select(state_code, psychRegions, relaxed)

# CREATE CATEGORIES WITH CASE_WHEN ###################

# case_when works a little differently so we'll save as df2
df2 <- df %>%
  mutate(likeArts = case_when(
    museum > 1 | scrapbook > 1 | modernDance > 1 ~ "yes",
    TRUE ~ "no"  # All other values
  ))

df2 %>%
  select(state_code, likeArts, museum:modernDance) %>%
  arrange(desc(likeArts)) %>%
  print(n = Inf)

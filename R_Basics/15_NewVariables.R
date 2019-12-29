# File: 15_NewVariables.R
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

# AVERAGE VARIABLES
df %>%
  mutate(   # mutate comes from tidyverse module
    socialMedia = (instagram + facebook + retweet)/3,
    artsCrafts = (museum + scrapbook + modernDance)/3
  ) %>%
  select(state_code, socialMedia, artsCrafts)


# REVERSE CODING 
df %>%
  mutate(   # mutate comes from tidyverse module
    outgoing = (volunteering + (privacy * -1)) / 2
  ) %>%
  select(state_code, outgoing, volunteering, privacy)

# For 1-n scale, use (n+1) - x
# For 0-n scale, use n- x

# PACKAGES

# packages "psych" and "scale" make this process much easier
browseURL("https://CRAN.R-project.org/package=psych")
browseURL("https://CRAN.R-project.org/package=Scale")
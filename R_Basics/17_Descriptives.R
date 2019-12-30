# File: 17_Descriptives.R
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
summary(df)  # Summary for entire table

df %>% select(entrepreneur) %>% summary()
# summary for one variable

# QUARTILES #####################################

# Tukey's five-number summary: minimum, lower-hinge,
# median, upper-hinge, maximum. No labels
fivenum(df$entrepreneur)

# Boxplot stats: hinges, n, CI for median, outliers
boxplot(df$entrepreneur, notch = T, horizontal = T)
boxplot.stats(df$entrepreneur)

# ALTERNATIVE DESCRIPTIVES ######################
p_load(psych)  # Load psych package
p_help(psych, web = F) # Get info on psych package

describe(df$entrepreneur)

describe(df)

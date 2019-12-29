# File: 12_ClusterCharts.R
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
  psychRegions,
  instagram:modernDance) %>%
  mutate(psychRegions = as.factor(psychRegions)) %>%  # as.factor change it to categorical value
  rename(y = psychRegions) %>%
  print()

# ANALYZE DATA #######################################

# By using Standardized object and variable names, the same 
# code can be reused for different analyses

# Calculate Clusters
hc <- df %>%   # Get Data
  dist %>%     # Compute Distance/Dissimilarity matrix
  hclust       # Compute heirarhical clusters

# Plot dendogram
hc %>% plot(labels = df$state_code)

# Draw boxes 
hc %>% rect.hclust(k = 2, border='red3')  # 2 boxes
hc %>% rect.hclust(k = 3, border='blue3')  # 3 boxes
hc %>% rect.hclust(k = 4, border='green3')  # 4 boxes

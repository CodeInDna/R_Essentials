# File: 05_Importing_Data.R
# Project: Baiscs_R
# INSTALL AND LOAD PACKAGES ##########################

# Install pacman ("package manager") if needed
# if(!require("pacman")) install.packages("pacman")

# Load contributed packages with pacman
# pacman::p_load(pacman, party, psych, rio, tidyverse)
# pacman: loading/unloading packages
# party: for decision trees
# psych: for many statistical procedures
# rio: for importing data
# tidyverse: for so many reasons
# LOAD AND PREPARE DATA #######################

# Save data to "df" (for Data Frame)
# Rename outcome with "y" (if it helps)
# Specify outcomes with df$y

# Import CSV files with readr::read_csv() from tidyverse
(df <- read_csv("Datasets/StateData.csv"))


# Import other formats with rio::import() from rio
(df <- import("Datasets/StateData.xlsv") %>% as_tibble())

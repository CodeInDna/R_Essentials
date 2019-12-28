# File: 09_Boxplots.R
# Project: Baiscs_R

# INSTALL AND LOAD PACKAGES ##########################

# pacman must already be installed; then load contributed 
# packages (including pacman) with pacman
pacman::p_load(pacman, tidyverse)

# LOAD DATA ##########################################

# Using the diamonds dataset from ggplot2

?diamonds  # Get info about diamonds dataset
diamonds   # Display the begining of the dataset


# BARPLOT OF FREQUENCIES ##########################################

?plot    # Get info on Generic x-y Plotting
?boxplot # Get info on Box Plot

# Boxplots with defaults
boxplot(diamonds$price)

# Similar command using pipelines
diamonds %>%
        select(price) %>%
        boxplot()

# Boxplots with options
diamonds %>%
        select(price) %>%
        boxplot(
                horizontal = T,
                notch = T,
                main = "Boxplot of Price of Diamonds",
                sub = "(Source ggplot2::diamonds)",
                xlab = "Price of Diamonds",
                col = "#CD0000"  # red3
        )

# Boxplots by group using plot()
diamonds %>%
        select(color, price) %>%
        plot()
        

# Boxplots by group using boxplot()
diamonds %>%
        select(color, price) %>%
        boxplot(
                price ~ color,   # Tilde indicates formula
                data = .,        # Dot is a placeholder for pipe
                col = "#CD0000"  # red3
        )




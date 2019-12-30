# File: 19_Regression.R
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

# SCATTERPLOTS ######################################
# Quick graphical check on data
df %>%
  select(museum, volunteering) %>%
  plot()

# Adding Regression line
lm(df$volunteering ~ df$museum) %>% abline()


# BIVARIATE REGRESSION #############################

# COmpute and save bivariate regression
fit1 <- lm(df$volunteering ~ df$museum)

# Show model
fit1

# Summarize regression model
summary(fit1)

# Confidence interval for coefficients
confint(fit1)

# Predict values of volunteering
predict(fit1)

# Prediction intervals for values of"volunteering"
predict(fit1, interval = "prediction")

# Regression Diagnostics
lm.influence(fit1)
influence.measures(fit1)

# MULTIPLE REGRESSION

# Moving the outcome to the front can make things easier
df <- df %>%
  select(volunteering, everything()) %>%
  print()

# Three ways to specify model

# Most concise
lm(df)  # first column is the outcome variable

# Identify outcome, infer rest
lm(volunteering ~ ., data=df)

# Identify entire model
lm(volunteering ~ instagram + facebook + retweet + 
     entrepreneur + gdpr + privacy + university +
     mortgage + museum + scrapbook + modernDance, data = df)

 # Save model
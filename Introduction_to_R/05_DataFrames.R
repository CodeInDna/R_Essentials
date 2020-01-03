# DataFrames
# What's a data frame?
# You may remember from the chapter about matrices that all the elements that you put in a matrix 
# should be of the same type. Back then, your data set on Star Wars only contained numeric elements.

# When doing a market research survey, however, you often have questions such as:

# 'Are you married?' or 'yes/no' questions (logical)
# 'How old are you?' (numeric)
# 'What is your opinion on this product?' or other 'open-ended' questions (character)
# ...
# The output, namely the respondents' answers to the questions formulated above, is a data set of 
# different data types. You will often find yourself working with data sets that contain different 
# data types instead of only one.

# A data frame has the variables of a data set as columns and the observations as rows. This will be 
# a familiar concept for those coming from different statistical software packages such as SAS or SPSS.

# head shows five six rows from the dataset and tail shows last six rows
head(mtcars)
tail(mtcars)

# Have a look at the structure
# Another method that is often used to get a rapid overview of your data is the function str(). 
# The function str() shows you the structure of your data set. For a data frame it tells you:
   
#   The total number of observations (e.g. 32 car types)
#   The total number of variables (e.g. 11 car features)
#   A full list of the variables names (e.g. mpg, cyl ... )
#   The data type of each variable (e.g. num)
#   The first observations

# Investigate the structure of mtcars
str(mtcars)

#####################################################################################################

# Creating a data frame
# We want to construct a data frame that describes the main characteristics of eight planets in our 
# solar system. According to your good friend Buzz, the main features of a planet are:
  
  # The type of planet (Terrestrial or Gas Giant).
  # The planet's diameter relative to the diameter of the Earth.
  # The planet's rotation across the sun relative to that of the Earth.
  # If the planet has rings or not (TRUE or FALSE).
# Definition of vectors
name <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name, type, diameter, rotation, rings)
planets_df

# Check the structure of planets_df
str(planets_df)
# 'data.frame':	8 obs. of  5 variables:

# Selection of data frame elements
# Similar to vectors and matrices, you select elements from a data frame with the help of square brackets 
# [ ]. By using a comma, you can indicate what to select from the rows and the columns respectively. For example:
  
  # my_df[1,2] selects the value at the first row and second column in my_df.
  # my_df[1:3,2:4] selects rows 1, 2, 3 and columns 2, 3, 4 in my_df.
# Print out diameter of Mercury (row 1, column 3)
planets_df[1, 3]  # 0.382

# Print out data for Mars (entire fourth row)
planets_df[4,]
# name               type diameter rotation rings
# 4 Mars Terrestrial planet    0.532     1.03 FALSE

# Instead of using numerics to select elements of a data frame, you can also use the variable names to select 
# columns of a data frame.
# Select first 5 values of diameter column
planets_df[1:5, "diameter"]
# 0.382  0.949  1.000  0.532 11.209

#################################################################################################

# Only planets with rings
# You will often want to select an entire column, namely one specific variable from a data frame. If you want to 
# select all elements of the variable diameter
# However, there is a short-cut. If your columns have names, you can use the $ sign:
# Select the rings variable from planets_df
rings_vector <- planets_df$rings

# Print out rings_vector
rings_vector
# [1] FALSE FALSE FALSE FALSE  TRUE  TRUE  TRUE  TRUE

# You probably remember from high school that some planets in our solar system have rings and others do not. 
planets_df[rings_vector,]
#     name      type diameter rotation rings
# 5 Jupiter Gas giant   11.209     0.41  TRUE
# 6  Saturn Gas giant    9.449     0.43  TRUE
# 7  Uranus Gas giant    4.007    -0.72  TRUE
# 8 Neptune Gas giant    3.883     0.67  TRUE

############################################################################################################

# The first argument of subset() specifies the data set for which you want a subset. By adding the second argument, you give R the necessary information and conditions to select the correct subset.
subset(planets_df, diameter < 1)
#       name               type diameter rotation rings
# 1 Mercury Terrestrial planet    0.382    58.64 FALSE
# 2   Venus Terrestrial planet    0.949  -243.02 FALSE
# 4    Mars Terrestrial planet    0.532     1.03 FALSE

####################################################################################

# Sorting
# Making and creating rankings is one of mankind's favorite affairs. These rankings can be useful 
# (best universities in the world), entertaining (most influential movie stars) or pointless (best 007 look-a-like).
# 
# In data analysis you can sort your data according to a certain variable in the data set. 
# In R, this is done with the help of the function order().
# 
# order() is a function that gives you the ranked position of each element when it is applied on a variable
a <- c(100, 10, 1000)
order(a) # gives index 
# 2 1 3

a[order(a)]
# 10  100 1000

# let us do something useful with it. You would like to rearrange your data frame such that it starts with the smallest planet and ends with the largest one. A sort on the diameter column.
# Use order() to create positions
positions <-  order(planets_df$diameter)

# Use positions to sort planets_df
planets_df[positions,]
#       name               type diameter rotation rings
# 1 Mercury Terrestrial planet    0.382    58.64 FALSE
# 4    Mars Terrestrial planet    0.532     1.03 FALSE
# 2   Venus Terrestrial planet    0.949  -243.02 FALSE
# 3   Earth Terrestrial planet    1.000     1.00 FALSE
# 8 Neptune          Gas giant    3.883     0.67  TRUE
# 7  Uranus          Gas giant    4.007    -0.72  TRUE
# 6  Saturn          Gas giant    9.449     0.43  TRUE
# 5 Jupiter          Gas giant   11.209     0.41  TRUE
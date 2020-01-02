# Vector - A basic data structure of R containing the same type of data.

# Create a vector
# Vectors are one-dimension arrays that can hold numeric data, character 
# data, or logical data. In other words, a vector is a simple tool to store 
# data. For example, you can store your daily gains and losses in the casinos.
# In R, you create a vector with the combine function c()

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(TRUE, FALSE, TRUE)

############################################################################

# Create a vector (2)
# After one week in Las Vegas and still zero Ferraris in your garage, you decide 
# that it is time to start using your data analytical superpowers.
# Before doing a first analysis, you decide to first collect all the winnings and 
#losses for the last week:
  # For poker_vector:
  # On Monday you won $140
  # Tuesday you lost $50
  # Wednesday you won $20
  # Thursday you lost $120
  # Friday you won $240

  # For roulette_vector:
  # On Monday you lost $24
  # Tuesday you lost $50
  # Wednesday you won $100
  # Thursday you lost $350
  # Friday you won $10
# You only played poker and roulette, since there was a delegation of mediums that 
# occupied the craps tables. To be able to use this data in R, you decide to 
# create the variables poker_vector and roulette_vector.
# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <-  c(-24, -50, 100, -350, 10)

############################################################################

# Naming a vector
# As a data analyst, it is important to have a clear view on the data that you are 
# using. Understanding what each element refers to is therefore essential.
# In the previous exercise, we created a vector with your winnings over the week. 
# Each vector element refers to a day of the week but it is hard to tell which 
# element belongs to which day. It would be nice if you could show that in the 
# vector itself.
# You can give a name to the elements of a vector with the names()
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
poker_vector
# Monday   Tuesday Wednesday  Thursday    Friday 
# 140       -50        20      -120       240 

names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

############################################################################

# Naming a vector (2)
# In the previous exercises you probably experienced that it is boring and frustrating 
# to type and retype information such as the days of the week. However, when you look  
# at it from a higher perspective, there is a more efficient way to do this, namely, 
# to assign the days of the week vector to a variable!
  
# Just like you did with your poker and roulette returns, you can also create a variable 
# that contains the days of the week. This way you can use and re-use it.
# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-   days_vector
names(roulette_vector) <- days_vector

############################################################################

# Calculating total winnings
# Now that you have the poker and roulette winnings nicely as named vectors, you 
# can start doing some data analytical magic.

# You want to find out the following type of information:
  
  # How much has been your overall profit or loss per day of the week?
  # Have you lost money over the week in total?
  # Are you winning/losing money on poker or on roulette?
  # To get the answers, you have to do arithmetic calculations on vectors.

# It is important to know that if you sum two vectors in R, it takes the 
# element-wise sum.
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector

# Print out total_vector
print(total_vector)  # 5 7 9

############################################################################

# Calculating total winnings (BACK TO THE CASINO)(2)
# First, you need to understand what the overall profit or loss per day of the 
# week was. The total daily profit is the sum of the profit/loss you realized on 
# poker per day, and the profit/loss you realized on roulette per day.
# In R, this is just the sum of roulette_vector and poker_vector.

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector + roulette_vector
total_daily
# Monday   Tuesday Wednesday  Thursday    Friday 
# 164      -100       120      -470       250 

############################################################################

# Calculating total winnings (3)
# Based on the previous analysis, it looks like you had a mix of good and bad days. 
# This is not what your ego expected, and you wonder if there may be a very tiny 
# chance you have lost money over the week in total?
  
# A function that helps you to answer this question is sum(). It calculates the sum 
# of all elements of a vector.
# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <- sum(roulette_vector) 

# Total winnings overall
total_week <- sum(total_poker, total_roulette)

# Print out total_week
total_week  # -36

# OR
total <- sum(poker_vector, roulette_vector)
total     # -36

###########################################################################

# Comparing total winnings
# Oops, it seems like you are losing money. Time to rethink and adapt your strategy! 
# This will require some deeper analysis...

# After a short brainstorm in your hotel's jacuzzi, you realize that a possible 
# explanation might be that your skills in roulette are not as well developed as 
# your skills in poker. So maybe your total gains in poker are higher (or > ) than 
# in roulette.

# Check if you realized higher total gains in poker than in roulette 
total_poker > total_roulette  # TRUE

###########################################################################

# Vector selection: the good times
# Your hunch seemed to be right. It appears that the poker game is more your cup of 
# tea than roulette.

# Another possible route for investigation is your performance at the beginning of 
# the working week compared to the end of it. You did have a couple of Margarita 
# cocktails at the end of the week...

# To answer that question, you only want to focus on a selection of the total_vector. 
# In other words, our goal is to select specific elements of the vector. To select  
# elements of a vector (and later matrices, data frames, ...), you can use square 
# brackets. Between the square brackets, you indicate what elements to select. For 
# example, to select the first element of the vector, you type poker_vector[1]. 
# To select the second element of the vector, you type poker_vector[2], etc. 
# Notice that the first element in a vector has index 1, not 0 as in many other 
# programming languages.

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]

#####################################################################

# Vector selection: the good times (2)
# How about analyzing your midweek results?
# To select multiple elements from a vector, you can add square brackets at the end 
# of it. You can indicate between the brackets what elements should be selected. For 
# example: suppose you want to select the first and the fifth day of the week: use the 
# vector c(1, 5) between the square brackets.

# Define a new variable based on a selection
poker_midweek <- poker_vector[c(2,3,4)]
poker_midweek
#   Tuesday Wednesday  Thursday 
#   -50        20      -120

#####################################################################

# Vector selection: the good times (3)
# Selecting multiple elements of poker_vector with c(2, 3, 4) is not very convenient. 
# Many statisticians are lazy people by nature, so they created an easier way to do 
# this: c(2, 3, 4) can be abbreviated to2:4, which generates a vector with all natural 
# numbers from 2 up to 4.

# So, another way to find the mid-week results is poker_vector[2:4]. Notice how 
# the vector 2:4 is placed between the square brackets to select element 2 up to 4.
poker_midweek <- poker_vector[2:4]
poker_midweek
#   Tuesday Wednesday  Thursday 
#   -50        20      -120

#####################################################################

# Vector selection: the good times (4)
# Another way to tackle the previous exercise is by using the names of the vector elements 
# (Monday, Tuesday, ...) instead of their numeric positions.

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c("Monday", "Tuesday", "Wednesday")]

# Calculate the average of the elements in poker_start
mean(poker_start) # 36.66667

#####################################################################

# Selection by comparison - Step 1
# By making use of comparison operators, we can approach the previous question in a more 
# proactive way.

#The (logical) comparison operators known to R are:
  #< for less than
  # > for greater than
  # <= for less than or equal to
  # >= for greater than or equal to
  # == for equal to each other
  # != not equal to each other
# These command tests for every element of the vector if the condition stated by the comparison 
# operator is TRUE or FALSE.

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Print out selection_vector
selection_vector
# Monday   Tuesday Wednesday  Thursday    Friday 
# TRUE     FALSE      TRUE     FALSE      TRUE 

##################################################################

# Selection by comparison - Step 2
# Working with comparisons will make your data analytical life easier. Instead of selecting a 
# subset of days to investigate yourself (like before), you can simply ask R to return only those
# days where you realized a positive return for poker.

# In the previous exercises you used selection_vector <- poker_vector > 0 to find the days on 
# which you had a positive poker return. Now, you would like to know not only the days on which 
# you won, but also how much you won on those days.

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days
# Monday Wednesday    Friday 
# 140        20       240 

# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days
# Wednesday    Friday 
# 100        10
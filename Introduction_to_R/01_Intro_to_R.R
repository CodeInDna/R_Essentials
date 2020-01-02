# Intro to R
# Calculate 3 + 4
3 + 4   # 7

# Calculate 6 + 12
6 + 12  # 18

###############################################################################

# Arithmetic with R
# In its most basic form, R can be used as a simple calculator. 
# Consider the following arithmetic operators:
  
  # Addition: +
  # Subtraction: -
  # Multiplication: *
  # Division: /
  # Exponentiation: ^
  # Modulo: %%
  # The last two might need some explaining:
  
# The ^ operator raises the number to its left to the power of 
# the number to its right: for example 3^2 is 9.
# The modulo returns the remainder of the division of the number 
# to the left by the number on its right, for example 5 modulo 3 or 5 %% 3 is 2.
# An addition
5 + 5  # 10

# A subtraction
5 - 5  # 0

# A multiplication
3 * 5  # 8

# A division
(5 + 5) / 2  # 5

# Exponentiation
2^5  # 32

# Modulo
28%%6 # 4

###############################################################################

# Variable assignment
# A basic concept in (statistical) programming is called a variable.
# A variable allows you to store a value (e.g. 4) or an object 
# (e.g. a function description) in R. You can then later use this variable's 
# name to easily access the value or the object that is stored within this variable.
# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x  # 42

###############################################################################

# Variable assignment (2)
# Suppose you have a fruit basket with five apples. As a data analyst in training, 
# you want to store the number of apples in a variable with the name my_apples.
# Assign the value 5 to the variable my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples # 5

###############################################################################

# Variable assignment (3)
# Every tasty fruit basket needs oranges, so you decide to add six oranges. As a 
# data analyst, your reflex is to immediately create the variable my_oranges and 
# assign the value 6 to it. Next, you want to calculate how many pieces of fruit 
# you have in total. Since you have given meaningful names to these values, you 
# can now code this in a clear way:
# my_apples + my_oranges
# Assign a value to the variables my_apples and my_oranges
my_apples <- 5
my_oranges <- 6

# Add these two variables together
my_apples + my_oranges

# Create the variable my_fruit
my_fruit = my_apples + my_oranges # 11

my_fruit  

###############################################################################
 
# Apples and oranges
# Common knowledge tells you not to add apples and oranges. But hey, that is what 
# you just did, no :-)? The my_apples and my_oranges variables both contained a 
# number in the previous exercise. The + operator works with numeric variables in R. 
# If you really tried to add "apples" and "oranges", and assigned a text value to the 
# variable my_oranges (see the editor), you would be trying to assign the addition of 
# a numeric and a character variable to the variable my_fruit. This is not possible.
# Assign a value to the variable my_apples
my_apples <- 5 

# Fix the assignment of my_oranges
my_oranges <- "six" 

# Create the variable my_fruit and print it out
my_fruit <- my_apples + my_oranges # Error in my_apples + my_oranges : non-numeric argument to binary operator
my_fruit

###############################################################################

# Basic data types in R
# R works with numerous data types. Some of the most basic types to get started 
# are:
  
  # Decimal values like 4.5 are called numerics.
  # Natural numbers like 4 are called integers. Integers are also numerics.
  # Boolean values (TRUE or FALSE) are called logical.
  # Text (or string) values are called characters.

# Change my_numeric to be 42
my_numeric <- 42.5

# Change my_character to be "universe"
my_character <- "some text"

# Change my_logical to be FALSE
my_logical <- TRUE

# What's that data type?
# Do you remember that when you added 5 + "six", you got an error due to a mismatch 
# in data types? You can avoid such embarrassing situations by checking the data 
# type of a variable beforehand. You can do this with the class() function, as the 
# code on the right shows.
# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 

# Check class of my_numeric
class(my_numeric)  # "numeric"

# Check class of my_character
class(my_character)  # "character"

# Check class of my_logical
class(my_logical)  # "logical"
# Lists, why would you need them?

# Vectors (one dimensional array): can hold numeric, character or logical values. The elements in a vector all have the same data type.
# Matrices (two dimensional array): can hold numeric, character or logical values. The elements in a matrix all have the same data type.
# Data frames (two-dimensional objects): can hold numeric, character or logical values. Within a column all elements have the same data 
# type, but different columns can be of different data type.

# A list in R is similar to your to-do list at work or school: the different items on that list most likely differ in length, characteristic, 
# and type of activity that has to be done.
 
# A list in R allows you to gather a variety of objects under one name (that is, the name of the list) in an ordered way. These objects can 
# be matrices, vectors, data frames, even other lists, etc. It is not even required that these objects are related to each other in any way.
# You could say that a list is some kind super data type: you can store practically any piece of information in it!

# Vector with numerics from 1 up to 10
my_vector <- 1:10 

# Matrix with numerics from 1 up to 9
my_matrix <- matrix(1:9, ncol = 3)

# First 10 elements of the built-in data frame mtcars
my_df <- mtcars[1:10,]

# Construct list with these different elements:
my_list <- list(my_vector, my_matrix, my_df)
my_list

##################################################################################################

# Creating a named list
# Just like on your to-do list, you want to avoid not knowing or remembering what the components of your list stand for. 
    # my_list <- list(name1 = your_comp1, 
    # name2 = your_comp2)
# This creates a list with components that are named name1, name2, and so on. If you want to name your lists after you've created them, 
# you can use the names() function as you did with vectors.

# Adapt list() call to give the components names
my_list <- list(vec = my_vector, mat = my_matrix, df = my_df)

# Print out my_list
print(my_list)


############################################################################################

# Selecting elements from a list
# Your list will often be built out of numerous elements and components. Therefore, getting a 
# single element, multiple elements, or a component out of it is not always straightforward.
 
# One way to select a component is using the numbered position of that component. For example, 
# to "grab" the first component of shining_list you type
 
# shining_list[[1]]
# A quick way to check this out is typing it in the console. Important to remember: to select 
# elements from vectors, you use single square brackets: [ ]. Don't mix them up!

# You can also refer to the names of the components, with [[ ]] or with the $ sign. Both will select the data frame representing the reviews:
 
# shining_list[["reviews"]]
# shining_list$reviews

# Print out the vector representing the numbers
my_list$vec  # [1]  1  2  3  4  5  6  7  8  9 10

# Print the second element of the vector representing the numbers
my_list$vec[2]  # 2


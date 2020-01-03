# Matrices

# What's a matrix?
# In R, a matrix is a collection of elements of the same data type (numeric, character, or logical) 
# arranged into a fixed number of rows and columns. Since you are only working with rows and columns, 
# a matrix is called two-dimensional.
# You can construct a matrix in R with the matrix() function. Consider the following example:
    # matrix(1:9, byrow = TRUE, nrow = 3)

# In the matrix() function:
# The first argument is the collection of elements that R will arrange into the rows and columns of 
# the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
# The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be 
# filled by the columns, we just place byrow = FALSE.
# The third argument nrow indicates that the matrix should have three rows.

# Construct a matrix with 3 rows that contain the numbers 1 up to 9
matrix(1:9, byrow=TRUE, nrow=3)

###############################################################################################

# Analyze matrices
# three vectors are defined. Each one represents the box office numbers from the first three Star Wars 
# movies. The first element of each vector indicates the US box office revenue, the second element refers 
# to the Non-US box office (source: Wikipedia).

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, byrow=TRUE, nrow=3)
star_wars_matrix

###############################################################################################

# Naming a matrix
# To help you remember what is stored in star_wars_matrix, you would like to add the names of the 
# movies for the rows. Not only does this help you to read the data, but it is also useful to select 
# certain elements from the matrix.
# Similar to vectors, you can add names for the rows and the columns of a matrix

# rownames(my_matrix) <- row_names_vector
# colnames(my_matrix) <- col_names_vector

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
rownames(star_wars_matrix)<-titles

# Name the rows with titles
colnames(star_wars_matrix) <- region

# Print out star_wars_matrix
print(star_wars_matrix)
#                            US   non-US
# A New Hope              460.998  314.4
# The Empire Strikes Back 290.475  247.9
# Return of the Jedi      309.306  165.8

###############################################################################################

# Calculating the worldwide box office
# The single most important thing for a movie in order to become an instant legend in Tinseltown 
# is its worldwide box office figures.
# To calculate the total box office revenue for the three Star Wars movies, you have to take the 
# sum of the US revenue column and the non-US revenue column.
# In R, the function rowSums() conveniently calculates the totals for each row of a matrix.
# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)
# worldwide_vector
# A New Hope The Empire Strikes Back Return of the Jedi
# 775.398                 538.375     475.106 


###############################################################################################

# Adding a column for the Worldwide box office
# In the previous exercise you calculated the vector that contained the worldwide box office receipt 
# for each of the three Star Wars movies. However, this vector is not yet part of star_wars_matrix.
# You can add a column or multiple columns to a matrix with the cbind() function, which merges matrices 
# and/or vectors together by column.

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix

###############################################################################################

# Adding a row
# Just like every action has a reaction, every cbind() has an rbind().
phantom <- c(474.5, 552.5)
attack_of_clones <- c(310.7, 338.7)
rev_of_jedi <- c(380.3, 468.5)
star_wars_matrix2 <- matrix(c(phantom, attack_of_clones, rev_of_jedi), byrow=TRUE, nrow=3)
rownames(star_wars_matrix2) <- c('The Phantom Menace', 'Attack of the Clones', 'Revenge of the Sith')
colnames(star_wars_matrix2) <- c('US', 'non-US')
star_wars_matrix2

all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)

################################################################################################

# The total box office revenue for the entire saga
# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector
# US   non-US 
# 2226.279 2087.800 

################################################################################################

# Selection of matrix elements
# Similar to vectors, you can use the square brackets [ ] to select one or multiple elements from 
# a matrix. Whereas vectors have one dimension, matrices have two dimensions. You should therefore use a comma to separate the rows you want to select from the columns. For example:
  
  # my_matrix[1,2] selects the element at the first row and second column.
  # my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.

# If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:
  
  # my_matrix[,1] selects all elements of the first column.
  # my_matrix[1,] selects all elements of the first row.

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]

# Average non-US revenue
mean(non_us_all) # 347.9667

# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]

# Average non-US revenue for first two movies
mean(non_us_some) # 281.15

# Assume ticket was 5 dollars
# Estimate the visitors
visitors <- all_wars_matrix / 5

# Print the estimate to the console
visitors

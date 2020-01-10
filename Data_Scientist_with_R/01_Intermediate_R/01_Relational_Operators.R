# RELATIONAL OPERATORS #####################################################

## Equality Operator #####################################################
TRUE == TRUE  # TRUE

TRUE == FALSE  # FALSE

"hello" == "goodbye"  # FALSE

3 == 2  # FALSE

## Inequality Operator #####################################################
TRUE != TRUE  # FALSE

TRUE != FALSE  # TRUE

"hello" != "goodbye"  # TRUE

3 != 2  # TRUE

# less than or greater then < or >
3 < 5  # TRUE
3 > 5 # FALSE

"hello" > "goodbye"  # TRUE
# h comes before g

TRUE < FALSE  # FALSE because TRUE coerces to 1 and FALSE coerces to 0

# less/greater than equal to <= or >= #####################################################
5 >= 3   # TRUE

3 >= 3   # TRUE

# Relational Operators & Vectors #####################################################
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
linkedin > 10 # TRUE FALSE  TRUE FALSE FALSE  TRUE  TRUE

# Compare Vectors to Vectors #####################################################
facebook <- c(17, 7, 5, 16, 8, 13, 14)
facebook <= linkedin  # FALSE  TRUE  TRUE FALSE FALSE  TRUE  TRUE

# Compare matrices #####################################################
# R's ability to deal with different data structures for comparisons does not stop at vectors. Matrices and 
# relational operators also work together seamlessly!
# Instead of in vectors (as in the previous example), the LinkedIn and Facebook data is now stored in a matrix 
# called views. The first row contains the LinkedIn information; the second row the Facebook information. 

views <- matrix(c(linkedin, facebook), nrow=2, byrow=TRUE)
views
# [,1] [,2] [,3] [,4] [,5] [,6] [,7]
# [1,]   16    9   13    5    2   17   14
# [2,]   17    7    5   16    8   13   14

# When does views equal 13?
views == 13
# [,1]  [,2]  [,3]  [,4]  [,5]  [,6]  [,7]
# [1,] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE
# [2,] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE

# When is views less than or equal to 14?
views <= 14
# [,1] [,2] [,3]  [,4] [,5]  [,6] [,7]
# [1,] FALSE TRUE TRUE  TRUE TRUE FALSE TRUE
# [2,] FALSE TRUE TRUE FALSE TRUE  TRUE TRUE

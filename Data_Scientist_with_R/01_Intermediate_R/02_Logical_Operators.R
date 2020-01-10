# Logical Operators #####################################################
  ## * AND (&) Operator
  ## * OR (|) Operator
  ## * NOT (!) Operator

# AND and OR Operators ##################################################
# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10  # TRUE

# Is last between 15 (exclusive) and 20 (inclusive)?
last > 15 & last <= 20 # FALSE

# AND and OR with Matrix #############################################
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow=2, byrow=TRUE)

# linkedin exceeds 10 but facebook below 10
linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >= 12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14

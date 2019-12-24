# File: 01_Basic_Syntax.R
# Project: Baiscs_R

# BASIC COMMANDS ########################

2+2 # Basic Math: Press cmd/ctrl enter

1:100 # Print numbers from 1 to 100 across several lines

print("Hello World")  # Prints "Hello World" in console

# ASSIGNING VALUES ######################

# Individual values
a <- 1            # Use <- and not =
2 <- b            # Can go other way, but silly
c <- d <- e <- 3  # Multiple Assignments

# Multiple Values
x <- c(1, 2, 5, 8)   # c= combine/concatenate
x                 # Prints contents of x in console

# SEQUENCES #############################

# Create Sequential data
0:10  # 0 through 10
10:0  # 10 through 0
seq(10) # 1 to 10
seq(30, 0, by = -3)  # Count Down by 3

# MATH ##################################

# Surround command with paranthesis to also print
(y <- c(5, 1, 0, 10))
x + y         # Adds corresponding elements in x and y
x * 2         # Multiplies each element in x by 2
2^6           # Powers/exponents
sqrt(64)      # Squareroot
log(100)      # Natural log: base e (2.71828...)
log10(100)    # Base 10 log

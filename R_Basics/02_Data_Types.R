# File: 02_Data_Types.R
# Project: Baiscs_R

# DATA TYPES ######################################

# Numeric

n1 <- 15   # Double precision by default
n1
typeof(n1)

n2 <- 1.5
n2
typeof(n2)


# Character

c1 <- "c"
typeof(c1)

c2 <- "a string of text"
typeof(c2)


# Logical

l1 <- TRUE   
l1           # TRUE
typeof(l1)   # "logical"

l2 <- F
l2           # FALSE
typeof(l2)   # "logical"

## VECTOR #######################################
v1 <- c(1,2,3,4,5)
v1
is.vector(v1)


v2 <- c("a","b","c")
v2
is.vector(v2)

v3 <- c(TRUE, TRUE, FALSE, FALSE, TRUE)
v3
is.vector(v3)

## MATRIX ######################################
m1 <- matrix(c(T,T,F,F,T,F), nrow = 2)
m1

m2 <- matrix(c("a","b","c","d"), nrow = 2, byrow = T)
m2

## ARRAY #######################################

# Give data, then dimensions(rows, columns, tables)
a1 <- array(c(1:24), c(4,3,2))
a1

# Data Frame ###################################

# Can combine vectors of the same length

vNumeric <- c(1,2,3)
vCharacter <- c("a","b","c")
vLogical <- c(T, F, T)

df1 <- cbind(vNumeric, vCharacter, vLogical)
df1   # Coerces all values to most basic data type

df2 <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df2   # Makes a dataframe with three different data types


# LIST ########################################

o1 <- c(1,2,3)
o2 <- c("a","b","c")
o3 <- c(T,F,T,T,F)

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, o3, list1) # List within a List
list2

## AUTOMATIC COERCION ##########################

# Goes to least restrictive data type

(coerce <- c(1, "b", F))
typeof(coerce)

## Coerce Numeric to Integer

(coerce2 <- 5)
typeof(coerce2)

coerce3 <- as.integer(coerce2)
typeof(coerce3)

## Coerce Character to Numeric

(coerce4 <- c("1","2","3"))
typeof(coerce4)

(coerce5 <- as.numeric(coerce4))
typeof(coerce5)

## Coerce Matrix to DataFrame
(coerce6 <- matrix(1:9, nrow = 3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(coerce6))
is.data.frame(coerce7)

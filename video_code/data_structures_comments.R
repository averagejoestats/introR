
# Basic R Data Structures
#    Atomic Vectors
#    Matrices
#    Lists
#    Data Frames

# read in billboard hot 100 for week of 1970-04-18
# source: https://github.com/HipsterVizNinja/random-data/tree/main/Music/hot-100


# Atomic Vectors - What we normally consider as a vector in R


# "atomic" because each element of "a" is indivisible
# has the additional property that all elements are of the same type


# Different atomic types:

# logical


# integer


# double (a.k.a. numeric)


# character



# Special Values: NA, NULL, NaN, -Inf, Inf
#     NA is used to indicate missing values
#     NULL is a generic length-0 object, serving several purposes
#     NaN is a "bad value", different from NA





# if you try to combine types in a vector, R automatically coerces to "higher" type
# logical < integer < double < character




# NOTES:
# automatic coercion is a common source of silent bugs
# R does not distinguish between scalar and length-1 vector
# look at how "c" function is used above
# can use '' or "" for strings but most people use ""

# coercion can be useful - some functions do it automatically 



# R has functions for manual coercion


# vectors have certain properties

# length


# names


# names can be set with "names" function or 
# specified when vector is created


# remove names with unname or as.vector



# You can subset vectors in various ways

# you can repeat




# you can use logical vectors of same length


# logical vectors are really useful for selecting data





## Matrices

# define matrices directly with "matrix" function
# ?matrix




# "class" function returns c("matrix","array")


# recycling: Many R objects use the concept of recycling to fill out objects


# subsetting works just like vectors, except two-dimensional




## Lists

# Lists are non-atomic vectors. Each element of a list is an R object
# with no restriction that each element must be the same type

# example: dimnames


# Creating a List: The analog to "c" is "list"


# Lists can be named



# Subsetting lists with [ ] produces a list


# Subsetting lists with [[ ]] produces the object in the element


# same for $



## Data Frames

# Data frames are a special type of list:
# Each list element is a vector of the same length


# these two attributes treat a data frame as a list


# these two like a matrix


# subsetting data frames can work like matrices or list

# like a matrix:


# like a list


## Show how we created the billboard dataset!
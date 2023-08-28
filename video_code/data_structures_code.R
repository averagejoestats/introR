
# Basic R Data Structures
#    Atomic Vectors
#    Matrices
#    Lists
#    Data Frames



# read in billboard hot 100 for week of 1970-04-18
# source: https://github.com/HipsterVizNinja/random-data/tree/main/Music/hot-100
hot100 <- read.csv("../datasets/billboard_1970-04-18.csv")
str(hot100)
head(hot100, n = 10 )
dim( hot100 )
class( hot100 )

# Atomic Vectors - What we normally consider as a vector in R
pos <- hot100$chart_position
pos
perf <- hot100$performer
perf

# "atomic" because each element of "pos" is indivisible
# has the additional property that all elements are of the same type
pos[8]
typeof(pos)
typeof(perf)

# Different atomic types:

# logical
top10 <- pos <= 10
top10
typeof(top10)

# integer
typeof(pos)

# double (a.k.a. numeric)
e <- c( 4.3, 6, 9.2)
e
typeof(e)

# character
perf
typeof(perf)



# Special Values: NA, NULL, NaN, -Inf, Inf
#     NA is used to indicate missing values
#     NULL is a generic length-0 object, serving several purposes
#     NaN is a "bad value", different from NA
hot100[ , c("previous_week","chart_debut") ]
has_nulls <- c(3.7, NULL, 7.2)
has_nulls
has_nans <- c(3.7, sqrt(-1), 0/0, log(-3) )
has_nans
has_infs <- c(3.7, 7/0, -3.4/0)
has_infs

is.na( hot100$previous_week )
is.nan( has_nans )
is.finite( has_infs )
is.infinite( has_infs )


# if you try to combine types in a vector, 
# R automatically coerces to "higher" type
# logical < integer < double < character
a <- c(FALSE,TRUE)
a
typeof(a)

b <- c( a, 1:3 )
b

d <- c(b, 1.3)
d
typeof(d)

e <- c(d, "ABC")
e
typeof(e)

# NOTES:
# automatic coercion is a common source of silent bugs
# R does not distinguish between scalar and length-1 vector
# look at how "c" function is used above
# can use '' or "" for strings but most people use ""

# coercion can be useful - some functions do it automatically 
sum( c(TRUE, FALSE, FALSE) )
mean( c(TRUE, FALSE, FALSE) )
is.na( hot100$previous_week )
sum( is.na( hot100$previous_week ) )

# R has functions for manual coercion
as.integer( c(TRUE,FALSE,FALSE) )
as.character( c(1.23,12,pi,exp(1)) )
as.double( 1:4 )
as.logical( 0:4 )



# vectors have certain properties

# length
song10 <- hot100$song[1:10]
song10
length( song10 )

# names
names(song10)
names(song10) <- hot100$performer[1:10]
names(song10)
song10

# names can be set with "names" function or 
# specified when vector is created
b <- c( bill = 3.5, susan = 9, jamie = 0 )
b
typeof(b)
names(b)
typeof( names(b) )


# remove names with unname or as.vector
unname(b)
b
b <- unname(b)
b
as.vector(b)




# You can subset vectors in various ways
song10
song10[1]
song10[1:3]
song10["The Beatles"]
song10[c("The Beatles","John Ono Lennon")]
song10[c("The Beatles","Badfinger")]
song10[c("The Beatles")]
song10[c(9,2,1,4,9)]

# you can repeat


# you can use logical vectors of same length
song10[c(TRUE,FALSE,FALSE,TRUE,TRUE,FALSE,FALSE,FALSE,FALSE,TRUE)]


# logical vectors are really useful for selecting data
nchar( song10 )
nchar( song10 ) <= 15
song10[ nchar(song10) <= 15 ]




## Matrices

# define matrices directly with "matrix" function
# ?matrix
m <- matrix( 1:8, 4, 2 )
m
m <- matrix( 1:8, 4, 2, byrow = TRUE )
m
dim(m)

colnames(m) <- c("column 1", "column 2")
m
rownames(m) <- c("r1","r2","r3","r4")
m

# "class" function returns c("matrix","array")
class(m)

# recycling: Many R objects use the concept 
# of recycling to fill out objects
matrix( 1:3, 3, 4 )
matrix( 1:3, 4, 3 )
matrix( 1:5, 4, 3 )
matrix(  NA, 4, 3 )



# subsetting works just like vectors, except two-dimensional
m
m[1,2]
class( m[1:2, ] )
class( m[1:2,2] )
class( m[1:2,2,drop=FALSE] ) 
m["r1",]
m[3:4, c("column 1","column 2")]
m[c("r1","r2",3),]
c("r1","r2",3)




## Lists

# Lists are non-atomic vectors. Each element of a list is an R object
# with no restriction that each element must be the same type

# example: dimnames
dimnames(hot100)
dimn <- dimnames(hot100)
dimn[[1]]
dimn[[2]]


# Creating a List: The analog to "c" is "list"
a <- list( 1:4, hot100$performer[1:3], m )
a
class(a)

# Lists can be named
a <- list( numbers = 1:4, perfs = hot100$performer[1:3], mat = m )
a
a$mat

# Subsetting lists with [ ] produces a list
a[1]
class(a[1])
a[[1]]
class( a[[1]] )
a["perfs"]
a[ 1:2 ]

# Subsetting lists with [[ ]] produces the object in the element
a[[ 1 ]]
a[[ "numbers" ]]

# same for $
a$perfs



## Data Frames

# Data frames are a special type of list:
# Each list element is a vector of the same length
hot100$chart_position
hot100$chart_date

rownames(hot100)
colnames(hot100)

# these two attributes treat a data frame as a list
names( hot100 )
length( hot100 )

# these two like a matrix
nrow( hot100 )
ncol( hot100 )


# subsetting data frames can work like matrices or list

# like a matrix:
head(hot100)
hot100[ 1, 3]
hot100[ 1:4, c(1,3,4) ]

# like a list
hot100$chart_date
hot100[["chart_position"]]
hot100[ "chart_position" ]
class( hot100[ "chart_position" ] )
class( hot100[[ "chart_position" ]] )

hot100[ , c("chart_position","song") ]
hot100[ c("chart_position","song" ) ]




## Show how we created the billboard dataset!



# read in the ames data
ames <- read.csv( "../datasets/ames_housing.csv" )
head( ames )
str( ames )

x1 <- ames$First_Flr_SF + ames$Second_Flr_SF
x2 <- ames$Gr_Liv_Area

par( mfrow = c(1,2) )
hist( x1 )
hist( x2 )

summary( x1 )
summary( x2 )

x1new <- rev( x1 )

summary( x1 )
summary( x1new )

summary( x1 == x2 )

summary( x1 == x1new )

summary( x2 - x1 )


# logical < integer < double (numeric) < [complex] < character
as.integer( TRUE )
v <- c(1,NA,7,8,NA,NA)
is.na(v)
sum( is.na(v) )

as.double( TRUE )

as.character( TRUE )

"TRUE" == TRUE

identical( "TRUE", TRUE )


# read in data from homework
ith <- read.csv("../datasets/ithaca_weather_2022.csv")
head(ith)
str(ith)


?as.Date

d <- as.Date( as.character(ith$date), "%Y%m%d" )
class(d)
typeof(d)

d[1:10]

d[5] - d[4]

format(as.Date("0000-01-01"), "%A" )



# matrix vs vector
v <- sample( 1:100, 12 )
length(v)
names(v)
dim(v)

m <- matrix( sample(1:100,12), 4, 3 )
length(m)
names(m)
dim(m)

v
dim(v) <- c(4,3)
v
v[ 1 ]
v[ 1, 1 ]
v[ 5 ]
v
class(v)
c(v)
v
as.vector(v)
v <- c(v)
v

# accessor and replacement functions
v 
length(v)
dim(m)
names(v)
names(v) <- letters[1:12]
names(v)
v
attributes(m)
rownames(m) <- LETTERS[1:4]
rownames(m)
m
attributes(m)
dimnames( m )

sum(v)
sum(v) <- 600 

?names

attributes(m)
dim(m)
dim(m) <- c(3,4)
m
attributes(m)

m
colnames(m) <- LETTERS[1:4]
m
attributes(m)
a <- attributes(m)
a
class(a)

v2 <- rnorm(12)
v2
typeof(v2)


# lm as a list
x <- rnorm(100)
y <- 3 + 2*x + 0.5*rnorm(100)
plot(x,y)
m1 <- lm( y ~ x )
summary(m1)
m1
class(m1)
names(m1)
m1$coefficients
is.numeric(m1$coefficients)
is.integer( m1$coefficients )
is.data.frame(m1$coefficients)
is.vector(m1$coefficients)
names( m1$coefficients )
m1[[1]]
m1[ 1 ]


# make your own list

# name
# hometown
# courses you're taking
# some musical acts you like

me <- list()
me$name <- "Joe Guinness"
me$hometown <- "St. Louis, MO"
me$courses <- "STSCI 2120"
me$music <- c("The Beatles","Bob Seger","Billie Eilish")
me









me <- list()
me[["name"]] <- "Joe Guinness"
me[["hometown"]] <- "St. Louis, MO"
me[["courses"]] <- "STSCI 2120"
me[["music"]] <- c("The Beatles","Bob Seger","Billie Eilish")
me














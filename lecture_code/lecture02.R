
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



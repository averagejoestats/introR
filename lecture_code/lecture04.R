

#
air <- read.csv("../datasets/airline_2019-07-01.csv")

# function to return city name from airline code
city_name_from_code <- function( code ){
    
    y <- unique(air$OriginCityName[air$Origin==code])
    return (y)

}

city_name_from_code("SAN")


# create an object that stores the city name
# for every distinct airport code
unique_codes <- sort( unique( air$Origin ) )

code_key <- data.frame( code = unique_codes, city = NA )

for( j in 1:nrow(code_key) ){
    code_key$city[j] <- city_name_from_code( code_key$code[j] )    
}

code_key

#
vars <- c("Origin","Dest","DepTime","ArrTime","Distance","Tail_Number")

ii <- which( air$Tail_Number == "303NV" )
ii_ord <- ii[ order( air$DepTime[ii] ) ]
print( air[ii_ord, vars], row.names = FALSE )

# Write a Function!
flight_path1 <- function( tail_number ){
    ii <- which( air$Tail_Number == tail_number )
    ii_ord <- ii[ order( air$DepTime[ii] ) ]
    print( air[ ii_ord, vars ], row.names = FALSE )
    return(ii)
}

flight_path1( "336NV" )

ii

# area of a rectangle
a <- 3
b <- 4
area <- a*b
area

area_fun <- function(a, b ){
    area <- a*b
    return(area)
}

area_fun( 3, 4 )    
area  
area_fun( 4, 6 )
area

a <- 3
b <- 4
d <- 5

volume_fun <- function(a, b, d = 1 ){
    volume <- a*b*d
    print(d)
    return(volume)
}

volume_fun( 5, 6 )

d


# area and perimeter of rectangle

x <- sample(1:100,10)

for( y in x ){
    print(y^2)
}


for( j in 1:length(x) ){
    if( x[j] < 50 ){
        print(x[j]^2)
    } else {
        print("this number is too big")
    }
}


for( y in sort(x) ){
    print(y)
}

for( j in 1:length(x)){
    print(sort(x))
}


for(j in 1:length(x)){
    print( min(x)^2 )
    x <- x[ -which.min(x) ]
}


for(j in 1:length(x)){
    print( sort(x)[j] )
}


print( x^2 )













# summary statistics of a vector of numbers




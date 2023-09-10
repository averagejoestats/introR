
# Why define your own functions?
#   work smarter not harder
#   write less code that is more reliable

# Functions
#   how to define and call a function
#   parts of a function
#   variable scoping



# airline dataset
air <- read.csv("../datasets/airline_2019-07-01.csv")
str(air)
head(air)
dim(air)

# short lesson on indexing


# get the flight path for a given tail number
tail_number <- "303NV"
ii <- air$Tail_Number == tail_number
typeof(ii)
length(ii)
sum(ii)

vars <- c("DepTime","ArrTime","OriginCityName","DestCityName","Tail_Number")
air[ii, vars] 

# reorder by DepTime
air_this_tail <- air[ii,]
air_this_tail$DepTime
sort( air_this_tail$DepTime )

ord <- order( air_this_tail$DepTime )

print( air_this_tail[ord, vars], row.names = FALSE )

# rewrite to avoid creating a smaller data frame
tail_number <- "303NV"
ii <- which( air$Tail_Number == tail_number )
ii_ord <- ii[ order( air$DepTime[ii] ) ]
print( air[ ii_ord, vars ], row.names = FALSE )

tail_number <- "336NV"
ii <- which( air$Tail_Number == tail_number )
ii_ord <- ii[ order( air$DepTime[ii] ) ]
print( air[ ii_ord, vars ], row.names = FALSE )

tail_number <- "218NV"
ii <- which( air$Tail_Number == tail_number )
ii_ord <- ii[ order( air$DepTime[ii] ) ]
print( air[ ii_ord, vars ], row.names = FALSE )


# Write a Function!
flight_path1 <- function( tail_number ){
    ii <- which( air$Tail_Number == tail_number )
    ii_ord <- ii[ order( air$DepTime[ii] ) ]
    print( air[ ii_ord, vars ], row.names = FALSE )
}

# Call it
flight_path1( "303NV" )
flight_path1( "336NV" )


# force user to supply data frame
flight_path2 <- function( tail_number, air ){
    ii <- which( air$Tail_Number == tail_number )
    ii_ord <- ii[ order( air$DepTime[ii] ) ]
    print( air[ ii_ord, vars ], row.names = FALSE )
}

flight_df <- air

flight_path2( "303NV", flight_df )


# functions return things
flight_path3 <- function( tail_number ){
    ii <- which( air$Tail_Number == tail_number )
    ii_ord <- ii[ order( air$DepTime[ii] ) ]
    print( air[ ii_ord, vars ], row.names = FALSE )
}
sv <- flight_path3( "303NV" )
sv



# let's print and return something more useful
flight_path4 <- function( tail_number ){
    ii <- which( air$Tail_Number == tail_number )
    ii_ord <- ii[ order( air$DepTime[ii] ) ]
    print( air[ ii_ord, vars ], row.names = FALSE )
    return( ii_ord )
}
sv <- flight_path4( "303NV" )
sv


# what if we just want the ordered indices?
flight_path5 <- function( tail_number, print_path = FALSE ){

    ii <- which( air$Tail_Number == tail_number )
    ii_ord <- ii[ order( air$DepTime[ii] ) ]

    if( print_path ) print( air[ ii_ord, vars ], row.names = FALSE )

    return( ii_ord )
    
}
sv <- flight_path5( "303NV" )
sv
sv <- flight_path5( "303NV", TRUE )
sv
sv <- flight_path5( "303NV", print_path = TRUE )

# what if we want control over what variables are printed?
flight_path6 <- function( tail_number, print_path = FALSE, vars = NULL){

    if( is.null(vars) ){
        vars <- c("DepTime","ArrTime","OriginCityName","DestCityName")
    }
    
    ii <- which( air$Tail_Number == tail_number )
    ii_ord <- ii[ order( air$DepTime[ii] ) ]
    
    if( print_path ) print( air[ ii_ord, vars ], row.names = FALSE )
    
    return( ii_ord )
    
}

sv <- flight_path6( "303NV", TRUE )
sv <- flight_path6( "303NV", TRUE, c("DepTime","ArrTime") )

# return multiple things: indices and total distance
flight_path7 <- function( tail_number ){
    ii <- which( air$Tail_Number == tail_number )
    ii_ord <- ii[ order( air$DepTime[ii] ) ]
    dist_traveled <- sum( air$Distance[ii_ord] )
    return( list( inds = ii_ord, dist_traveled = dist_traveled ) )
}

flight_path7( "303NV" )
flight_path7( "336NV" )


# something fun: find the plane that traveled the furthest
unique_tails <- unique( air$Tail_Number )
num_tails <- length( unique_tails )
dist_of_tail <- rep(NA, num_tails )
names( dist_of_tail ) <- unique_tails

for( j in 1:num_tails ){
    dist_of_tail[j] <- flight_path7( unique_tails[j] )$dist_traveled
}

head(dist_of_tail)
dist_of_tail["303NV"]
dist_of_tail[2]

max( dist_of_tail )
sort( dist_of_tail, decreasing = TRUE )[1:10]

flight_path6( "", TRUE )
flight_path6( "N779UA", TRUE )
flight_path6( "N373HA", TRUE )
flight_path6( "N449UA", TRUE )




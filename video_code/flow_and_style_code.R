
# Flow Control
  # 'for' loops
  # if, then, else


# Style
  # why is style important?
  # choosing good variable names
  # comments
  # indentation, lining things up





# https://github.com/rfordatascience/tidytuesday/blob/master/data/2022/2022-03-01/readme.md
# https://afdc.energy.gov/data_download/alt_fuel_stations_format
# https://afdc.energy.gov/data_download

ev <- read.csv("../datasets/alt_fuel_stations_2023-08-07.csv")
str(ev)
head(ev)
nrow(ev)
ncol(ev)
dim(ev)

# Dataset is huge, with many columns. 
# We need to get a handle on what we have. 
sv <- rnorm(6)
sv[1:4]

names( ev )[1:10]

table( ev$Fuel.Type.Code )

table( ev$Station.Name )
length( table( ev$Station.Name ) )
length( unique( ev$Station.Name ) )

table( ev$Street.Address )[1:10]
names( table(ev$Street.Address) )[1]
sum( is.na( ev$Street.Address ) )

table( ev$City )[1:10]
sort( table( ev$City ) )[1:10]
sort( table( ev$City ), decreasing = TRUE )[1:10]

# going through every variable can get tedious. 
# Luckily we have a computer!
# use a for loop. Basic syntax:
for( j in 1:10 ){
    print(j)
}

?Control

x <- c(4,2,9,8,3,7)
y <- rep(NA, length(x))

for( j in 1:length(x) ){
    y[j] <- x[j]^2
}
x
y
c(x,y)
cbind( x, y )
class( cbind(x,y) )
cbind(x)

# try this out on our columns
for( j in 1:ncol(ev) ){
    print( names(ev)[j] )
    print( sort( table( ev[,j] ), decreasing = TRUE )[1:4] )
}

# looping vector can be any vector
for( nm in names(ev) ){
    print( nm )
    print( sort( table( ev[[nm]] ), decreasing = TRUE )[1:4] )
    cat("\n\n")
}


# Conditional statements - if/else
# basic syntax:
x <- FALSE
if( x ){
    print("x is TRUE")
}

# equivalent syntax, since only 1 command inside { }
x <- TRUE
if( x ){ print("x is TRUE") }
if( x ) print("x is TRUE") 

# if ... else
x <- NA
if( x ){
    print("x is TRUE")
} else {
    print("x is FALSE")
}

if( x ) print("x is TRUE") else print("x is FALSE")


# if ... else if ... else if ... else
x <- FALSE
if( is.na(x) ){
    print("x is NA")
} else if( x ){
    print("x is TRUE")
} else {
    print("x is FALSE")
}


# Usually, you will evaluate something inside of if(   )
for( nm in names(ev) ){

    print( nm )
    
    if( is.character( ev[[nm]] ) ){
        print( sort( table( ev[[nm]] ), decreasing = TRUE )[1:4] )
    } else if( is.numeric( ev[[nm]] ) ){
        print( summary( ev[[nm]] ) )
    } else {
        print( "neither character nor numeric" )
    }
    cat("\n\n")
    
}

?Control


# Style:
#   Pick good variable names - short but informative and accurate
#   include comments - enough to describe program, but not too much
#   line things up, indent inside if's and for's

# indentation example: if, else if, else
for( nm in names(ev) ){

    print( nm )
    
    if( is.character( ev[[nm]] ) ){
        print( sort( table( ev[[nm]] ), decreasing = TRUE )[1:4] )
    } else { 
        if( is.numeric( ev[[nm]] ) ){
            print( summary( ev[[nm]] ) )
        } else {
            print( "neither character nor numeric" )
        }
    }
    cat("\n\n")
    
}


# Comments - give useful information

# Loop over all the column names in the ev data.frame
for( nm in names(ev) ){
    
    print( nm )
  
    # Print different information depending on column type
    if( is.character( ev[[nm]] ) ){
        # If character, print the 4 most common values
        print( sort( table( ev[[nm]] ), decreasing = TRUE )[1:4] )
    } else if( is.numeric( ev[[nm]] ) ){
        # If numeric, print a 5 number summary
        print( summary( ev[[nm]] ) )
    } else {
        print( "neither character nor numeric" )
    }
    
    cat("\n\n")
    
}


# Is your code easy to read? White space can help. Don't go overboard
# if a line is too long, consider defining intermediate variables if
# speed is not an issue

# Loop over all the column names in the ev data.frame
for( nm in names(ev) ){
    
    print( nm )
    
    # Print different information depending on column type
    if( is.character( ev[[nm]] ) ){
        
        # If character, print the 4 most common values
        tab <- table( ev[[nm]] )
        sorted_tab <- sort( tab, decreasing = TRUE )
        print( sorted_tab[1:4] )
        
    } else if( is.numeric( ev[[nm]] ) ){
        
        # If numeric, print a 5 number summary
        print( summary( ev[[nm]] ) )
        
    } else {
        print( "neither character nor numeric" )
    }
    
    cat("\n\n")
    
}







?Syntax

# review of for loop syntax
# - break and next
# - works on lists
y <- sample(1:10,10)

for( j in y ){
    # body of the for loop
    print(j)
}

for( j in 1:length(y) ){
    # body of the for loop
    if( y[j] == 8 ){
        next
    }
    print(y[j])
}

for( j in 1:length(y) ){
    # body of the for loop
    print(y[j])
    if( y[j] == 8 ){
        break
    }
}
print(j)

for( j in 1:length(y) ){
    # body of the for loop
    if( y[j] != 8 ){
        print(y[j])
    }
}

j <- 375
print(j)
for( j in 1:length(y) ){
    print(j)
}
print(j)

for( j in 1:length(y) ) print(j)



# review of if else syntax
y <- rnorm(1)
if( y < 0 ){
    print("y is negative")
}

y <- rnorm(1)
if( y < 0 ){
    print("y is negative")
} else {
    print("y is positive")
}

if( y < 0 ) print("y is negative") else print("y is positive")

y <- rbinom(1, 10, 0.5) - 5
if( y < 0 ){
    print("y is negative")
} else if(y > 0) {
    print("y is positive")
} else {
    print("y is neither positive or negative")
}

# if with a vector of logicals
y <- rnorm(4)
y < 0

for(j in 1:length(y)){
    if( y[j] < 0 ){
        print("y is negative")
    } else {
        print("y is positive")
    }
}

# & vs &&
# | vs ||
# !
x1 <- c(TRUE,TRUE,FALSE,FALSE)
x2 <- c(TRUE,FALSE,TRUE,FALSE)

cbind( x1, x2, and = x1 & x2, or = x1 | x2 )

x1 && x2

# & is for elementwise comparison of logical vectors
# && is for comparison of single values
# | is for elementwise comparison of logical vectors
# || is for comparison of single values

TRUE && FALSE
TRUE || FALSE

# any and all
any( c(TRUE,FALSE,FALSE) )
any( c(FALSE,FALSE,FALSE) )

all( c(TRUE,TRUE,TRUE) )
all( c(TRUE,FALSE,TRUE) )


# identical and all.equal
2 == sqrt(2)*sqrt(2)

identical( c(3,4,5), c(3,4,7) )
identical( c(3,4,5), c(3,4,5) )

identical( 2, sqrt(2)*sqrt(2) )

all.equal( 2, sqrt(2)*sqrt(2) )



c(TRUE,FALSE) & c(TRUE,TRUE)
c(TRUE,FALSE) && c(TRUE,TRUE)


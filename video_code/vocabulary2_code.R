
# apply family (apply, lapply, sapply, tapply)

# apply
fake_grades <- read.csv("../datasets/fake_gradebook.csv")
quiz_grades <- fake_grades[ , 9:15 ]
rownames( quiz_grades ) <- fake_grades$fake_ids
quiz_grades

apply( quiz_grades, 1, mean, na.rm = TRUE )
apply( quiz_grades, 2, mean, na.rm = TRUE )

# rowMeans, colMeans, etc.
rowMeans( quiz_grades, na.rm = TRUE )
colMeans( quiz_grades, na.rm = TRUE )

apply( quiz_grades, 1, max, na.rm = TRUE )
apply( quiz_grades, 2, max, na.rm = TRUE )


# lapply and sapply
ames <- read.csv("../datasets/ames_housing.csv")
head(ames)
class( ames )

lapply( ames, summary )
lapply( ames, range )
lapply( ames, max )

sapply( ames, max )
sapply( ames, range )
t( sapply( ames, range ) )

summary_or_table <- function(x){
    if( is.numeric(x) ){
        summary(x)
    } else {
        sort( table(x), decreasing = TRUE )[1:5]
    }
}

lapply( ames, summary_or_table )

# tapply
tapply( ames$Sale_Price, ames$Overall_Cond, mean, na.rm = TRUE )
tapply( ames$Sale_Price, ames$Year_Sold, mean, na.rm = TRUE )


# pmin, pmax
max( quiz_grades[,1], quiz_grades[,2] )
max( quiz_grades[,1], quiz_grades[,2], na.rm = TRUE )

pmax( quiz_grades[,1], quiz_grades[,2], na.rm = TRUE )

cbind( 
    quiz_grades[,1:2],
    max = pmax( quiz_grades[,1], quiz_grades[,2], na.rm = TRUE )
)

# any and all
quiz_grades[1,]
is.na( quiz_grades[1,] )
any( is.na( quiz_grades[1,] ) )

quiz_grades[7,]
is.na( quiz_grades[7,] )
any( is.na( quiz_grades[7,] ) )

apply( quiz_grades, 1, function(x) any(is.na(x)) )

quiz_grades[1,]
!is.na( quiz_grades[1,] )
all( !is.na( quiz_grades[1,] ) )

quiz_grades[3,]
!is.na( quiz_grades[3,] )
all( !is.na( quiz_grades[3,] ) )

apply( quiz_grades, 1, function(x) all(!is.na(x)) )



# character string operations
hot <- read.csv("../datasets/billboard_1970-04-18.csv")
head( hot )

grep( "Love", hot$song )
grepl( "Love", hot$song )
which( grepl( "Love", hot$song ) )

hot$song[ grep("Love", hot$song ) ]
hot$song[ grepl("Love", hot$song ) ]

hot$song[ grep("Girl|Woman", hot$song) ]

love_songs <- hot$song[ grep("Love", hot$song) ]
gsub( "Love", "Elbow", love_songs )

hot$chart_date
strsplit( hot$chart_date, "-" )

substr( hot$chart_debut, 1, 4 )
substr( hot$chart_debut, 6, 7 )

paste( hot$song, hot$performer )
paste( hot$song, "by", hot$performer )

paste( hot$song, "by", toupper( hot$performer ) )
paste0( hot$song, " by ", toupper( hot$performer ) )
paste( hot$song, toupper( hot$performer ), sep = " by " )

# cat vs print
print( hot$song[1] )
hot$song[1]
cat( hot$song[1] )
cat( hot$song[1], hot$song[2] )
cat( hot$song[1], "\n", hot$song[2] )
paste0( hot$song[1], "\n", hot$song[2] )
cat( paste0( hot$song[1], "\n", hot$song[2] ) )

{
    cat("Top 10 Songs\n")
    cat("========================================\n")
    for( j in 1:10 ){
        cat( paste0( j, ". ", hot$song[j], "\n" ) )
    }
}



















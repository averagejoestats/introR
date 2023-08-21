

## Part 1:

# Install R
# Install RStudio
# Organize your files!
# Rstudio layout
# RStudio options
# - disable workspace saving and storing
# - code on left, console on right










## Part 2:

# How to watch and learn
# - get 2 screens if you can
# - open the <filename>_comments.R version in RStudio
# - type in the commands yourself as you go
# - hit pause and experiment beyond what we do here
# - Read the help files. Yes, really read them.
# - It will feel slow and tedious at first  --->  faster path to mastery


print("hello, friend")
print("how are you?")

# this is a comment


# understand your working directory - global vs local or relative paths
getwd()
setwd("/home/joe/Dropbox/teaching/repos/introR/video_code")
getwd()
setwd("..")
getwd()
setwd("datasets")
getwd()
setwd("../video_code")
getwd()

# read in a dataset (titanic data)
# source: https://hbiostat.org/data/
read.csv("titanic5.csv")
list.files()
list.files("../datasets")
read.csv("../datasets/titanic5.csv")
titanic <- read.csv("../datasets/titanic5.csv")
titanic
head( titanic )
class( titanic )

# csv and data.frame store a table of data
# each row is an "observation" (one person)
# each column is a "variable" (name, sex, etc.)
# columns may have different types (character string, number, date)

# get information about the dataset
dim( titanic )
nrow( titanic )
ncol( titanic )
str( titanic )
names( titanic )
colnames( titanic )


# why did ticket get coded as character?
titanic$Ticket

# what about commas in Name?


# access a column
titanic$Age
titanic[ , "Age" ]
titanic[1:10,"Age"]
titanic$Age[1:10]
class( titanic$Age )
class( titanic[,"Age"] )
titanic[1:10, c("Age","Survived") ]
class( titanic[1:10, c("Age","Survived")] )
head( titanic[, c("Age","Survived")] )
head( titanic[, c("Age","Survived")], n = 10  )
names(titanic)
titanic[1:10, c(4,12)]

# basic statistics
mean( titanic$Age )
mean( titanic$Age, na.rm = TRUE )
sd( titanic$Age, na.rm = TRUE )
max( titanic$Age, na.rm = TRUE )
min( titanic$Age, na.rm = TRUE )
range( titanic$Age, na.rm = TRUE )
summary( titanic$Age ) 
hist( titanic$Age )
table( titanic$Survived )
titanic$Survived
plot( titanic$Age, titanic$Survived )

# basic math operations
3+7
sqrt(26)
log(1.010101)

# math operations on vectors
1:10
c(1,2,3,4,5,6,7,8,9,10)
age10 <- titanic$Age[ 1:10 ]
age10
min(age10)
age10 + 1
age10*2
round( age10 )
age10 - round(age10)

# getting help
?round
round( x = age10, digits = 1 )
round( age10, 1 )

# what happened with 'x' and 'digits'?
x
digits
ls()
x <- 4
x
ls()
rm(x)
ls()


# you can also type commands directly in the console
# same as running them from the script


# create your own vectors
1:10
5:8
c(7,9,10)
c("blue","red","yellow","magenta","goldenrod")
seq( 0, 1, by = 0.3333333 )
seq( 0, 1, by = 0.3 )
?seq
seq(0,10)
seq(0,1, length.out = 4 )
?rep
rep(0.5, 3)
rep( c(0,1), 3 )
rep( c(0,1), each = 3 )
x <- c(0,1)
rep(x,3)
runif(10)
?runif
runif(10, 0, 5)
?rnorm
hist( runif(1000000) )
hist( rnorm(1000000), breaks = 200 )

# improve our plot of Survived vs Age by adding uniform noise
# to each variable
plot( titanic$Age, titanic$Survived )
n <- nrow(titanic)
x <- titanic$Age + runif( n, min = -0.2, max = -0.2 )
y <- titanic$Survived + runif(n, min = -0.1, max = 0.1 )
plot(x,y)

# save your data frame as a csv
head(titanic)
head( titanic[ , -13] )
write.csv( titanic[,-13], file = "../datasets/titanic5_without_URL.csv")
?write.csv
write.csv( 
    titanic[,-13], 
    file = "../datasets/titanic5_without_URL.csv", 
    row.names = FALSE
)
write.csv( 
    titanic[,-13], 
    file = "../datasets/titanic5_without_URL.csv", 
    row.names = FALSE,
    quote = 2
)

fname = "../datasets/titanic5_without_URL.csv"
write.csv( titanic[,-13], file = fname, row.names = FALSE, quote = 2 )

# saving your data frame as an RData object
?save
save( titanic[,-13], file = "../datasets/titanic5_without_URL.RData")
titanic2 <- titanic[,-13]
head(titanic2)
save( titanic2, file = "../datasets/titanic5_without_URL.RData")
rm(titanic2)
ls()
load("../datasets/titanic5_without_URL.RData")
ls()






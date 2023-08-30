
# practice code for csv and data frames
titanic <- read.csv("../datasets/titanic5.csv")
head(titanic)

titanic$Age
titanic[ , "Age"  ]

mean(titanic$Age, na.rm = TRUE )
median(titanic$Age, na.rm = TRUE )

hist( titanic$Age )

tab <- table( titanic$Age )
names( which.max(tab) )

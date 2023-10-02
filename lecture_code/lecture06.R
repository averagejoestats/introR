
# read in ames data
ames <- read.csv("../datasets/ames_housing.csv")

head(ames)

tapply( ames$Sale_Price, ames$Year_Sold, mean, na.rm = TRUE )


m1 <- lm( Sale_Price ~ Year_Sold, data = ames )
summary(m1)

plot( ames$Year_Sold, ames$Sale_Price )
abline(m1)

m2 <- lm( Sale_Price ~ as.factor(Year_Sold), data = ames )
summary(m2)

plot( ames$Year_Sold, ames$Sale_Price )
m2$coefficients[1]
m2$coefficients[2]

m3 <- lm( Sale_Price ~ Gr_Liv_Area, data = ames )
summary(m3)
plot( ames$Gr_Liv_Area, ames$Sale_Price, xlim = c(0,6000) )
abline(m3, col = "magenta", lwd = 3 )
abline(v=0)



m4 <- lm( Sale_Price ~ Gr_Liv_Area + as.factor(Year_Sold), data = ames )

summary(m2)
summary(m4)

m5 <- lm( Sale_Price ~ Gr_Liv_Area + Bedroom_AbvGr, data = ames )
summary(m5)




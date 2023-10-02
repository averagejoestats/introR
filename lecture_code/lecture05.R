
# maps
#install.packages("maps")
library("maps")
?map

pdf("../plots/usa_map.pdf", width = 6, height = 6)
map("usa")
dev.off()

# new plots and overplotting
ames <- read.csv("../datasets/ames_housing.csv")
plot( ames$Gr_Liv_Area, ames$Sale_Price )
hist( ames$Sale_Price )


plot( ames$Gr_Liv_Area, ames$Sale_Price, type = "n", 
      xlab = "House Size (square feet)", ylab = "$ Sale Price" )
text( ames$Gr_Liv_Area, ames$Sale_Price, ames$Garage_Cars )

hist( ames$Sale_Price )
legend("topright", legend = c("cat","dog"), pch = 1:2 )
text(4e5, 800, "blueberry")
lines( c(4e5,6e5), c(600,600), lwd = 4, col = "magenta", type = "o",
       lty = 3)

par()
par(mfrow=c(1,2))
par()
plot( ames$Gr_Liv_Area, ames$Sale_Price, type = "n", 
      xlab = "House Size (square feet)", ylab = "$ Sale Price" )
hist( ames$Sale_Price )

par( mfrow=c(1,1) )


# adding your own axes



# rgb colors
plot( NA, xlim = c(0,10), ylim = c(0,10) )
rect( 1, 1, 2, 2, col = rgb(0,0,0) )
rect( 3, 1, 4, 2, col = rgb(1,1,1) )
rect( 5, 1, 6, 2, col = rgb(1,0,0) )
rect( 7, 1, 8, 2, col = rgb(0,1,0) )
rect( 9, 1, 10, 2, col = rgb(0,0,1) )
rect( 1, 3, 2, 4, col = rgb(0,0.8,.2) )
rect( 3, 3, 4, 4, col = rgb(0,0.6,0) )
rect( 1, 5, 2, 6, col = rgb(0,0.8,.6) )
rect( 5, 3, 6, 4, col = "green4" )

rgb(0,0,0)
rgb(1,1,1)
rgb(0.2,0.2,0.2)



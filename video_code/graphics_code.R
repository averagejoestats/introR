
# Basic R Graphics

# The basic R graphics capabilities are extremely powerful
# and customizable. 

# load the ames housing data
ames <- read.csv("../datasets/ames_housing.csv")
head(ames)
ames <- ames[ ames$Neighborhood == "North_Ames", ]
dim(ames)

# make a simple scatter plot
x <- ames$Gr_Liv_Area
y <- ames$Sale_Price/1000
plot(x,y)

# what happens here?
plot.default
debug( plot.default )
plot(x,y)
undebug(plot.default)

# Virtually every aspect is customizable
?plot

plot(
    x,y, 
    xlab = "House Size (square feet)", ylab = "Sale Price ($thousands)",
    main = "North Ames Housing Data"
)

plot(x,y, pch = 2, col = "blue", cex = 0.5 )
plot(x,y, pch = 2, col = "blue", cex = 2.0 )

# some modifications can be a vector
pchs <- c( 0, 1, 3, 4, 6 )
plot( x, y, pch = pchs[ ames$Garage_Cars + 1 ] )
legend("topleft", pch = pchs, legend = 0:4, title = "Garage Size" )

# you can add text to the plot. Useful for informative plotting symbols
plot( x, y, type = "n" )
text( x, y, ames$Garage_Cars, cex = 0.8 )

# see also: polygon, rect, segments, abline, arrows


# you can put multiple plots on one page
par( mfrow = c(1,2) )
plot( ames$Gr_Liv_Area, ames$Sale_Price/1000 )
plot( ames$Year_Built, ames$Sale_Price/1000 )

plot( ames$Gr_Liv_Area, ames$Sale_Price/1000 )
par(mfrow = c(1,1) )
plot( ames$Gr_Liv_Area, ames$Sale_Price/1000 )
dev.off()
plot( ames$Gr_Liv_Area, ames$Sale_Price/1000 )

# you can customize many features with the par function
?par

par( family = "serif" )
plot( ames$Gr_Liv_Area, ames$Sale_Price/1000 )
dev.off()

par( mar = c(5,4,4,2) + 0.1 )
plot( ames$Gr_Liv_Area, ames$Sale_Price/1000 )
par( mar = c(5,4,2,2) + 0.1 )
plot( ames$Gr_Liv_Area, ames$Sale_Price/1000 )
par( mar = c(5,4,2,4) + 0.1 )
plot( ames$Gr_Liv_Area, ames$Sale_Price/1000 )

?colors
colors()
plot(x,y, pch = 2, col = "tomato1", cex = 0.5 )


# You can save a plot in Rstudio
plot(
    x,y, 
    xlab = "House Size (square feet)", ylab = "Sale Price ($thousands)",
    main = "North Ames Housing Data"
)


# But you should use a graphics device to save your plots 
# in a specific format (pdf, png, jpeg, etc)
pdf( "../plots/ames_housing.pdf", width = 8, height = 7 )
plot(
    x,y, 
    xlab = "House Size (square feet)", ylab = "Sale Price ($thousands)",
    main = "North Ames Housing Data"
)
dev.off()



# Let's plot some weather data
ith <- read.csv( "../datasets/ithaca_weather_2004_2023.csv" )
head( ith )

ith$date <- as.Date( as.character(ith$date), "%Y%m%d" )
ith$year <- as.numeric( format( ith$date, "%Y" ) )
ith$month <- as.numeric( format( ith$date, "%m" ) )
ith$day <- as.numeric( format( ith$date, "%d" ) )
ith$day_frac <- ith$day + ith$hour/2400
ith$doy <- as.numeric( format( ith$date, "%j" ) )
ith$doy_frac <- ith$doy + ith$hour/2400

ii <- ith$year == 2023 & ith$month == 1
x <- ith$day_frac[ii]
y <- ith$tempC[ii]

plot( x, y, xlab = "day of Jan", ylab = "Temp (C)" )
plot( x, y, xlab = "day of Jan", ylab = "Temp (C)", type = "l" )
plot( x, y, xlab = "day of Jan", ylab = "Temp (C)", type = "o" )


years <- 2005:2023
plot( 
    NA, type = "n", xlim = c(1,31), ylim = c(-30,20),
    xlab = "day of Jan", ylab = "Temp (C)" 
)
for( j in 1:length(years) ){
    ii <- ith$year == years[j] & ith$month == 1
    x <- ith$day_frac[ii]
    y <- ith$tempC[ii]
    color <- ifelse( years[j] < 2023, "gray", "black" )
    wid <- ifelse( years[j] < 2023, 1, 2 )
    lines( x, y, col = color, lwd = wid )
}
    
library("viridis")
colors <- rev( viridis( 2*length(years) ) )    
years <- 2005:2023
plot( 
    NA, type = "n", xlim = c(1,31), ylim = c(-30,20),
    xlab = "day of Jan", ylab = "Temp (C)" ,
    main = "January Ithaca, NY Temperatures (c), 2005-2023" 
)
for( j in 1:length(years) ){
    ii <- ith$year == years[j] & ith$month == 1
    x <- ith$day_frac[ii]
    y <- ith$tempC[ii]
    color <- ifelse( years[j] < 2023, colors[j], colors[length(colors)] )
    wid <- ifelse( years[j] < 2023, 1, 2 )
    lines( x, y, col = color, lwd = wid )
}

colors <- rev( viridis( 2*length(years) ) )    
years <- 2005:2023
plot( 
    NA, type = "n", xlim = c(1,366), ylim = c(-30,40),
    xlab = "day of year", ylab = "Temp (C)" ,
    main = "Ithaca, NY Temperatures (c), 2005-2023" 
)
for( j in 1:length(years) ){
    ii <- ith$year == years[j]
    x <- ith$doy_frac[ii]
    y <- ith$tempC[ii]
    color <- ifelse( years[j] < 2023, colors[j], colors[length(colors)] )
    wid <- ifelse( years[j] < 2023, 1, 2 )
    lines( x, y, col = color, lwd = wid )
}


































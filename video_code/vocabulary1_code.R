
# Building your R vocabulary 
# http://adv-r.had.co.nz/Vocabulary.html

# lm, model formulas, predictions
ames <- read.csv("../datasets/ames_housing.csv")
head(ames)

m1 <- lm( Sale_Price ~ Gr_Liv_Area, data = ames )
summary(m1)

plot( ames$Gr_Liv_Area, ames$Sale_Price )
abline(m1, col = "magenta" )

plot(m1)

class(m1)
names(m1)
m1$coefficients
m1$fitted.values
m1$df.residual

pred_df <- data.frame( Gr_Liv_Area = c(1000,2000,3000) )
predict( m1, pred_df )

pred_df$predicted_Sale_Price <- predict( m1, pred_df )
pred_df

# factors, factors in regression
m2 <- lm( Sale_Price ~ Gr_Liv_Area + Overall_Cond, data = ames )
summary(m2)

typeof( ames$Overall_Cond )
ames$Overall_Cond <- as.factor( ames$Overall_Cond )
typeof( ames$Overall_Cond )
class( ames$Overall_Cond )
ames$Overall_Cond

ames$Overall_Cond <- relevel( ames$Overall_Cond, ref = "Very_Poor" ) 
ames$Overall_Cond

m3 <- lm( Sale_Price ~ Gr_Liv_Area + Overall_Cond, data = ames )
summary(m3)


# distribution functions, *norm, *unif, *binom, *poisson, *gamma, etc
?rnorm

qvec <- seq(-5,5,by=0.01)

par(mfrow=c(1,2))
prob_dens <- dnorm( qvec )
plot( qvec, prob_dens, type = "l", main = "Normal Prob Density")

cum_dist <- pnorm( qvec )
plot( qvec, cum_dist, type = "l", main = "normal cumulative distribution fun")

normals <- rnorm(1e5)
hist( normals, breaks = 100  )

# unique, duplicated, expand.grid, split
cyclone <- read.csv("../datasets/hurdat2.csv")

storm_summary <- unique( cyclone[ c("code","name") ] )
tail( storm_summary, n = 40 )

storm_summary <- unique( cyclone[ c("code","name","date") ] )
tail( storm_summary, n = 20 )

dups <- duplicated( cyclone$code )
dups[1:100]
head( data.frame( dups, cyclone$code, cyclone$name ), n = 100 )
head( data.frame( !dups, cyclone$code, cyclone$name ), n = 100 )

storm_summary <- cyclone[ !dups, c("code","name","date","lon","lat") ]
tail( storm_summary, n = 20 )


sizes <- c("small","medium","large")
colors <- c("red","green","blue")
expand.grid( sizes, colors )
expand.grid( color = colors, size = sizes )
class( expand.grid( color = colors, size = sizes ) )
as.matrix( expand.grid( color = colors, size = sizes ) )

fabrics <- c("natural","synthetic")
expand.grid( color = colors, size = sizes, fabric = fabrics )


tail( cyclone, n = 100 )

cyc_split <- split( cyclone, cyclone$code )
class( cyc_split )
cyc_split[[1]]
cyc_split[[2]]
cyc_split[[3]]
cyc_split[[ length(cyc_split) ]]
cyc_split[[ "AL172022" ]]

cyclone$max_wind <- NA
cyc_split <- split( cyclone, cyclone$code )
for(j in 1:length(cyc_split)){
    cyc_split[[j]]$max_wind <- max( cyc_split[[j]]$wind, na.rm = TRUE )
}

cyclone <- unsplit( cyc_split, cyclone$code )
    
summary_vars <- c("code","name","date","lon","lat","max_wind")
storm_summary <- cyclone[ !dups, summary_vars ]
tail( storm_summary, n = 20 )    
  
    
    
    
















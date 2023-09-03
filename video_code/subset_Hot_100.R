# read in the full dataset
dat <- read.csv("../datasets/Hot_100.csv")

# find the rows for the date we want
ii <- dat$chart_date == "1970-04-18"

# specify the variables we want
vars <- c(
    "chart_position",
    "chart_date",
    "song",
    "performer",
    "time_on_chart",
    "consecutive_weeks",
    "previous_week",
    "peak_position",
    "chart_debut"
)

# subset
dat2 <- dat[ii, vars]

# reorder by chart position
ord <- order( dat2$chart_position )
dat3 <- dat2[ord,]

# write to csv
fname = "../datasets/billboard_1970-04-18.csv"
write.csv( dat3, file = fname, row.names = FALSE ) 

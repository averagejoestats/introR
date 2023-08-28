
# read in the ithaca weather dataset and verify that it is a data frame

# If you look at the first few rows, you'll see that a few of them
# are actually from the very end of 2021. This is because the data
# are from 2022 in UTC time. Exclude these 2021 rows from the data frame.

# plot the air temperature variable (tempC)  

# The plot should look strange with some unusual
# outliers. This is because missing values are coded as -9999.
# How many such values are there in the tempC variable? 

# Set these values to NA instead of -9999

# plot the tempC variable again. Looks better!

# identify the missing value codes for the other variables, and recode them as NA
# (they are not all -9999)

# What is the data type of the date column?

# convert the date column to character using as.character

# use the as.Date function to convert the date column to a Date type.

# use the format function to create a new column containing the day of the
# year as an integer (001-365). Make sure to convert it to a numeric type
# The documentation for strptime may be useful (but you won't need to use
# the strptime function)

# create a new column containing day of year with fractions taking the time
# into account. For example, 12am on January 1 should be 0.00, 
# and 6am on January 2 should be 1.25

# plot tempC against your fractional day variable

# We want to make a dataset that could allow us to build a predictive
# model for 3pm temperature based on data available at 9am
# To do this, we create a new data frame in which each row is 1 day,
# and the columns are date, 3pm tempC, 9am tempC, 9am precip, ... , 9am soil_temp
# we'll do it in steps

# create a logical vector for whether or not the time of day in each row is 9am

# create a logical vector for whether or not the time of day in each row is 3pm

# create a vector with all of the dates associated with those 9am rows

# create a vector with all of the dates associated with those 3pm rows

# make sure those date vectors are the same

# create a vector with all of the 3pm tempC values

# create vectors for all of the 9am values

# put the dates and all of these vectors into a data frame

# print out the first 10 rows.

# plot 3pm temperature against 7am temperature to verify that you see
# a relationship


# read in the tropical cyclone data, hurdat2.csv

# Each row of the data is a record of the status of a tropical
# cyclone at 6 hour intervals. 

# NOTE: the generic term for a strong rotating storm is "tropical cyclone"
# a hurricane is tropical cyclone that has wind speeds greater than 74mph.
# So even though the dataset is called "hurdat", not all of the entries
# correspond to hurricanes.


# Convert all missing value codes to NA

# Write a "search" function that takes a name as its argument
# and returns all of the codes for storms with that name
# It should return character(0) if there are no matches
# The matching should be case-INsensitive.

# use your function to find a name that was used at least 3 times
# for different storms

# Write a function that takes in a storm code, and prints out
# all of the data for that storm. If there are no matches,
# it should print "No matches for supplied code" 
# It should return the indices of the rows for that storm.


# Look up the definition for "Accumulated Cyclone Energy"
# Write a function that takes in a storm code and returns
# the accumulated cyclone energy. If no match for the storm
# code exists, your function should throw a warning and return NA
# See documentation for "warning"

# Write a function that returns the maximum wind speed for a given
# storm code

# Write a function that returns a logical indicating whether a storm 
# with a given code ever became a hurricane (see definition above)
# Use your max wind speed function in this function

# Write a function that returns the minimum pressure for a given
# storm code

# Write a function that returns the duration of a given storm code in
# fractional days


# You are now going to create a new dataset that has one row
# for each storm. 

# Create a data frame with the following columns:
#  * unique storm code
#  * storm name
#  * initial date and time of storm
#  * storm duration in fractional days
#  * maximum wind speed
#  * logical whether storm became a hurricane
#  * minimum pressure
#  * accumulated cyclone energy

# Some tips: Use your functions! Initialize a data frame with the unique
# storm codes, and NA for all of the other columns. Then loop over
# the storm codes, and fill in the other columns one by one.

# To show your results: 
#  * print out the dimensions of the data frame
#  * print out the last 20 rows
#  * print out the storms from 2005


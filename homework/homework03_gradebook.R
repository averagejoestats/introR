
# read in the fake gradebook data (fake_gradebook.csv)

# Store the number of rows (students) in a variable


# create a new column to hold the homework averages. Fill it with NAs


# create a new column to hold the quiz averages. Fill it with NAs

# write a for loop to iterate over the rows of the data frame.
# In each iteration, calculate the student's homework average
# and store it in the homework average column
# IMPORTANT: missing scores should be set to zero.
# You might find the "unlist" function helpful


# Write a for loop to iterate over the rows of the data frame.
# In each iteration, calculate each student's quiz average,
# and store it in the quiz average column.
# Remember that the lowest quiz score is dropped for the purpose
# of calculating the quiz average. Missing values are still set to zero.
# A little mathematical reasoning can make your code simpler.


# We want to assess the difficulty of the quizzes. Write a for loop
# to iterate over the quiz columns, and calculate the average score
# for each quiz. This time, remove the missing values. Store the
# averages in a named vector.


# Create a new column for the total percentage score. Calculate each
# student's total percentage score as 35% quiz average + 65% homework average
# homework is out of 20. quizzes are out of 10
# This can be done without a for loop.


# Create a new column for the letter grade. Fill it with NAs

# To make things simpler, use this table for the letter grades:
# 90 - 100% = A
# 80 -  90% = B
# 70 -  80% = C
# 60 -  70% = D
# 00 -  60% = F

# Write another for loop to iterate over the students. Use if/else
# statements to assign each student the correct letter grade.
# If a score is exactly on the boundary, give the higher grade.
# Do not round up any scores.


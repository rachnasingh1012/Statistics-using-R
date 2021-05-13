# Creating List
my_vector <- 1:10 # Vector with numerics from 1 up to 10

my_matrix <- matrix(1:9, ncol = 3) # Matrix with numerics from 1 up to 9

my_df <- mtcars[1:10,] # First 10 elements of the built-in data frame mtcars

# Adapt list() call to give the components names
my_list <- list(my_vector, my_matrix, my_df)
names(my_list) <- c("vec", "mat", "df")
# Print out my_list
my_list

# Selection

mtcars$mpg # Print out the vector
mtcars[[2]][2] # Print the second element of the vector 
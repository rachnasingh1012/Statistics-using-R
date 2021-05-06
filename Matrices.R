# Using matrix()

matrix(1:9, byrow = TRUE, nrow = 3)

# Naming a matrix

my_matrix <- matrix(c((1:3)^2, (1:3)^3),
                    byrow = TRUE,
                    ncol = 3)
colnames(my_matrix) <- c("one", "two", "three")
rownames(my_matrix) <- c("squared", "cubic")
my_matrix

# Column- and row-wise arithmetics

mat <- matrix(1:9, byrow = TRUE, ncol = 3)
mat
colSums(mat)
colMeans(mat)

# Addings rows and columns

mat_row <- rbind(mat, 10:12)
mat_row
mat_col <- cbind(mat, 10:12, 13:15)
mat_col

# Selection of matrix

my_matrix <- matrix(1:9, byrow = TRUE, ncol = 3)
my_matrix[1,1]
my_matrix[2,3]
my_matrix[,3]
my_matrix[2,]
my_matrix[1:2,2:3]

# Matrix Arithmetics

my_matrix * 2
my_matrix + 2
my_matrix^2
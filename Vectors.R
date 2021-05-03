#vector

numeric_vector <- c(1, 2, 3)
character_vector <- c("apple", "kiwi", "pear")

#combinig vector

vec_A <- c(1, 4)
vec_B <- c(6, 7)
vec_C <- c(11, 2)
combined <- c(vec_A, vec_B, vec_C)
combined

#naming vector

my_vector <- c("Markus", "Teacher")
names(my_vector) <- c("Name", "Profession")
my_vector

# using':'

my_vec3 <- 12:1
my_vec3
my_vec4 <- -12:12
my_vec4
my_vec5 <- 13.2:18.8
my_vec5
seq(13.2, 18.8, by = 0.8)

#Summing two vectors
vec_A <- c(1, 2, 3)
vec_B <- c(4, 5, 6)
vec_total <- vec_A + vec_B
vec_total
 
# Sum up elements of a vector with sum()

vec_A <- c(1, 2, 3)
vec_A_sum <- sum(vec_A)
vec_A_sum

#Application
species1 <- c(140, 110, 88, 12, 9)
species2 <- c(24, 110, 17, 62, 76)
day <- c("Mon", "Tue", "Wed", "Thu", "Fri")
names(species1) <- day
names(species2) <- day
per_day<- species1+species2
per_day
total_species <- sum(species1,species2)
total_species


species1<species2
species1[3]
species2[c(2:4)]
species2[-c(2:4)]
species1["Wed"]
selection <- species1 == species2
selection

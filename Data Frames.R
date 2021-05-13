mtcars
head(mtcars)
tail(mtcars)
str(mtcars)


# Definition of vectors
name <- c("Mercury", "Venus", "Earth", 
          "Mars", "Jupiter", "Saturn", 
          "Uranus", "Neptune")
type <- c("Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", 
          "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 
              11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 
              0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)

# Create a data frame from the vectors
planets_df <- data.frame(name,type,diameter,rotation,rings)
planets_df

#selection

planets_df[1,1]
planets_df[2, ]
planets_df[, 3]
planets_df[1:5, "diameter"]
rings_vector <- planets_df$rings
rings_vector

#sorting

a<-c(4,67,89,67,34,31,10,100)
order(a)

a[order(a)] # to reshuffle it

positions <-  order(planets_df$diameter)
planets_df[positions,]
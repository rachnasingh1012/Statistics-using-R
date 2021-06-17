# Explore the mtcars data frame with str()

str(mtcars)

# Using Scatter plot

ggplot(mtcars, aes(x=cyl, y=mpg)) +
  geom_point()

# Adding color aesthetic and size aesthetic

ggplot(mtcars, aes(wt, mpg, color = disp, size=disp)) +
  geom_point()

ggplot(co2) +
  geom_line(aes(x = year,
                y = conc,
                colour = conc > 330))

ggplot(iris) +
  geom_point(aes(x = Sepal.Length,
                 y = Sepal.Width),
             colour = "blue")

g <- ggplot(iris) +
  geom_point(aes(x = Sepal.Length,
                 y = Sepal.Width,
                 colour = Species))
g + scale_color_manual(values =
                         c("red", "blue", "black"))

# Adding shape aesthetic

ggplot(iris, aes(x = Sepal.Length,
                 y = Sepal.Width,
                 shape = Species)) +
  geom_point()

# using scales

g <- ggplot(iris) +
  geom_point(aes(x = Sepal.Length,
                 y = Sepal.Width,
                 colour = Species))
g
g + scale_y_reverse()


# Map the color aesthetic to clarity

 ggplot(diamonds, aes(carat, price,color=clarity)) +
  geom_point() +
  geom_smooth()
 
# Line plot
 
 ggplot(mtcars, aes(wt, mpg, color = disp, size=disp)) +
   geom_line()

# Box plot
 
 ggplot(ToothGrowth) +
   geom_boxplot(aes(x = supp,
                    y = len))
 
 ggplot(ToothGrowth) +
   geom_boxplot(aes(x = supp,
                    y = len,
                    fill = supp))
# Barplots
 
 ggplot(mtcars) +
   geom_bar(aes(x = cyl))
 
# Histogram
 
 ggplot(iris) +
   geom_histogram(aes(x = Sepal.Length))
 
 # Addind geom_smooth() to add smooth trend curve
 
 ggplot(mtcars, aes(x=wt,y= mpg)) +
   geom_point() +
   geom_smooth(method = "lm")
 
# Facetting
 
ggplot(mtcars, aes(x=wt,y= mpg)) +
   geom_point() + facet_wrap(. ~ gear)

g <- ggplot(iris, aes(x = Sepal.Length,
                      y = Petal.Length)) +
  geom_point() + geom_smooth(method = "lm")
g + facet_wrap(~ Species)
g + facet_wrap(~ Species, ncol = 2)

# Controlling scales

g <- ggplot(iris, aes(x = Sepal.Length,
                      y = Petal.Length)) +
  geom_point() + geom_smooth(method = "lm")
g + facet_wrap(~ Species)
g + facet_wrap(~ Species, scales = "free")
 

g <- ggplot(iris, aes(x = Sepal.Length,
                       y = Petal.Length)) +
   geom_point() + geom_smooth(method = "lm")
 g
 g + facet_grid(. ~ Species)
 g + facet_grid(Species ~ .)
 g + facet_grid(Sepal.Length < 6 ~ Species)
 
 
 
#factor basics

fruit <- c("nut", "berry", "drupe", "drupe",
           "berry", "drupe", "nut")
fruit_factor <- factor(fruit)
fruit_factor

#factor levels

fruit <- factor(c("nut", "berry", "drupe",
                  "drupe", "berry", "drupe",
                  "nut"))
levels(fruit)
levels(fruit) <- c("b", "d", "n")
fruit

# Summarising a factor

fruit <- factor(c("nut", "berry", "drupe",
                  "drupe", "berry", "drupe",
                  "nut"))
summary(fruit)

# Ordered factors

animals <- factor(c("Bear", "Donkey", "Eel"))
animals
temps <- factor(c("Low", "Medium", "High"))
temps
temps <- factor(c("Low", "Medium", "High"),
                ordered = TRUE,
                levels = c("Low", "Medium", "High"))
temps
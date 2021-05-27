medium <- "LinkedIn"
num_views <- 14

# if statement 
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}

# if else statement
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
}else{
  print("Unknown medium")
}

# else if statement

if (num_views > 15) {
  print("You're popular!")
} else if (num_views <= 15 & num_views > 10) {
  print("Your number of views is average")
} else {
  print("Try to be more visible!")
}


li <- 15
fb <- 9
if (li>=15 & fb>=15) {
  sms <- 2 * (li + fb)
} else if (li<10&fb<10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- (li+fb)
}
print(sms)
# While loop

speed <- 64
while (speed>30) {
  print("Slow down!")
  speed <- speed-7
}
speed


while (speed > 30) {
  print(paste("Your speed is", speed))
  if (speed>80) {
    break
  }
  if (speed > 48) {
    print("Slow down big time!")
    speed <- speed - 11
  } else {
    print("Slow down!")
    speed <- speed - 6
  }
}


i <- 1
while (i <= 10) {
  print((i*3))
  if ((i*3)%%8==0) {
    break
  }
  i <- i + 1
}


# For loop
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

for(l in linkedin) {
  print(l)
} 
 
 
for (li in linkedin) {
    if (li>10 ) {
      print("You're popular!")
    } else {
      if(li<=10)  {
        print("Be more visible!")
      }
    }
    print(li)
  }
  
  
for (li in linkedin) {
    if (li > 10) {
      print("You're popular!")
    } else {
      print("Be more visible!")
    }
    if(li>16){
      print("This is ridiculous, I'm outta here!")
      break
    } 
    if(li<5) {
      print("This is too embarrassing!")
      next
    }
    print(li)
  }
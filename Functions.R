new.function <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}
new.function(8)

func <- function() {
  for(i in 1:9) {
    b <- i^2
    print(b)
  }
}
func()

func1 <- function(a,b,c) {
  result <- a * b + c
  print(result)
}
func1(5,3,11)
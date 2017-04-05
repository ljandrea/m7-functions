# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  length.a <- length(a)
  length.b <- length(b)
  max.length <- max(length.a, length.b)
  min.length <- min(length.a, length.b)
  answer <- max.length - min.length
  return (answer)
}

# Pass two vectors of different length to your `CompareLength` function
a <- seq(1,10)
b <- seq(11, 30)
CompareLength(a, b)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  max.length <- max(length(a), length(b))
  if (max.length == length(a)) {
    answer <- length(a) - length(b)
    description.1 <- paste("Your first vector is longer by",answer,"elements", sep=" ")
    return (description.1)
  } else {
    answer <- length.(b) - length.(a)
    description.2 <- paste("Your second vector is longer by",answer,"elements", sep= " ")
    return (description.2)
  }
}

# Pass two vectors to your `DescribeDifference` function
c <- seq(1, 100)
d <- c('hi', 'hello', 'hola')
DescribeDifference(c,d)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifferenceBonus <- function(a, b) {
  name.1 <- deparse(substitute(a))
  name.2 <- deparse(substitute(b))
  max.length <- max(length(a), length(b))
  if (max.length == length(a)) {
    answer <- length(a) - length(b)
    description.1 <- paste(name.1,"is longer by",answer,"elements", sep=" ")
    return (description.1)
  } else {
    answer <- length.(b) - length.(a)
    description.2 <- paste(name.2,"is longer by",answer,"elements", sep= " ")
    return (description.2)
  }
}
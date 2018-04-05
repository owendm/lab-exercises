## Part 1: Debugging

my_num <- 6
initials <- "?. ?."

my_vector <- c(my_num, initials)

# run ?sum to get more info
vector_sum <- sum(my_vector)

# Describe why this doesn't work: 
# String is not a compatible type for the sum() function

install.packages("stringr")

my_line <- "Hey, hey, this is the library"

print(str_length(my_line))

# Describe why this doesn't work: 
# stringr is installed but not loaded

said_the_famous <- paste(my_line, " - ", initial)

# Describe why this doesn't work: 
# inital is not assigned (did you mean initials?)


## Part 2 - Vector and function practice

# Make a vector and use typeof to check what type R considers it to be

greetings <- c("hey", "hi", "hello")
typeof(greetings)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"

CompareLength <- function(vector1, vector2) {
  n <- abs(length(vector1) - length(vector2))
  return(paste("the difference in lengths is ", n))
}

# Pass two vectors of different length to your `CompareLength` function

dog_names <- c("fido", "rover")

CompareLength(greetings, dog_names)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"

DescribeDifference <- function(vector1, vector2) {
  n <- abs(length(vector1) - length(vector2))
  if (length(vector1) > length(vector2)) {
    return(paste("Your first vector is longer by ", n, "elements"))
  } else {
    return(paste("Your second vector is longer by ", n, "elements"))
  }
}

# Pass two vectors to your `DescribeDifference` function

DescribeDifference(dog_names, greetings)

# Write a function `CombineVectors` that takes in 3 vectors and combines them into one

CombineVectors <- function(vector1, vector2, vector3) {
  return(paste(vector1, vector2, vector3))
}

# Send 3 vectors to your function to test it.

farm_animals <- c("sheep", "cows", "chickens", "pigs")

CombineVectors(farm_animals,greetings,dog_names)

# Write a function `CapsTime` that takes in a vector of names of courses you're taking, ex "Informatics 201" and removes all capital letters


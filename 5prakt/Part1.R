# 1
#name <- readline("Enter your name: ")
#surname <- readline("Enter your surname: ")

#cat(c("Hello,", name, surname, "! Welcome to R!"))

# 2
num <- readline("Enter a number: ")
if (as.numeric(num) == as.integer(num)){print("It is an integer.")} else{
  print("It is not an integer.")
}

# 3
#l <- as.numeric(readline("Enter number of elements: "))
n <- c(rep(NA, l))

# 4
for (i in 1:length(n)) {
  if(i %% 2 == 0)
    n[i] <- 1
  else
    n[i] <- 0
}

# 5
grades10 <- c(3, 9, 10)
grades5 <- c()
for (i in 1:length(grades10)){
  if(grades10[i] == 0)
    grades5[i] <- 1
  else if (grades10[i] < 4)
    grades5[i] <- 2
  else if (grades10[i] == 4 | grades10[i] == 5)
    grades5[i] <- 3
  else if (grades10[i] == 6 | grades10[i] == 7)
    grades5[i] <- 4
  else
    grades5[i] <- 5
}

# 6 
rows <- as.numeric(readline("Rows: "))
cols <- as.numeric(readline("Cols: "))
if(rows != cols)
  cat("Impossible to create an identity matrix with such dimensions")
m <- matrix(0, nrow = rows, ncol = cols)
diag(m) <- 1

# 7
cnt <- c('France', 'Hungary', 'Ukraine', 'Romania', 'Germany', 'Russia', 'Finland', 'Italy', 'Spain')
for (c in cnt){
  if (c == "Russia"){
    print(sprintf("Russia is found. Its number is %i", which(cnt == "Russia")))
    break
  } else {
    print("It is not Russia.")
  }
}

i <- 1
c <- cnt[i]
while (c != 'Russia'){
  i <- i + 1
  c <- cnt[i]
  print("It is not Russia.")
}
print(sprintf("Russia is found. Its number is %i", which(cnt == "Russia")))

id <- 1:3
country <- c("Flatland", "Wonderland", "Sphereland")
craziness <- c(20, 15, 18)
region_type <- c("A", "B", "A")
author <- c("Abbot", "Carroll", "Burger")
size <- c(10, 100, 30)
m <- cbind(id, country, craziness, region_type, author, size)
df <- as.data.frame(m)

# 1
func1 <- function(bd){
  res <- c("integer"=0, "character"=0, "factor"=0)
  for (i in 1:dim(df)[2]) {
    if(is.integer(df[,i])) {
      res[1] <- res[1] + 1 
    }
    else if(is.character(df[,i])) {
      res[2] <- res[2] + 1
    }
    else if (is.factor(df[,i])) {
      res[3] <- res[3] + 1
    }
    
  }
  
  return(res)
}

# 2
test_df <- as.data.frame(c(1,2,3))
func2 <- function(bd) {
  l <- c()
  for (i in 1:dim(bd)[2]) {
    if(is.numeric(bd[,i])) {
      l <- c(l, bd[,i])
    }
  }
  return(as.data.frame(l))
}

 # 3
-

# 4
func3 <- function(vec) {
  if(is.numeric(vec)) 
    return(mean(vec))
  
  return("Vector is not numeric, cannot compute the median")
}



# 1
matr = matrix(3, 3, 4)
matr[1,3] <- 4
matr[2,1] <- 1
matr[3,2] <- NA
matr[3,4] <- 1

# 4
a <- c(1, 3, 4, 9, NA)
b <- c(5, 6, 7, 0, 2)
c <- c(9, 10, 13, 1, 20)
vec_cols = cbind(a,b,c)
vec_rows = rbind(a,b,c)
rownames(vec_cols) <- paste0("row", 1:5)
colnames(vec_rows) <- paste0("col", 1:5)

# 3
names <- c("Jane", "Michael", "Mary", "George")
ages <- c(8, 6, 28, 45)
gender <- c(0, 1, 0, 1)
diff_el = cbind(ages, gender)
rownames(diff_el) <- names
square_age <- ages ^ 2
diff_el <- cbind(diff_el, square_age)

# 4
info = list(names,ages, gender)
info[[1]][2]
print(info[3])
names(info) <- c("name", "age", "gender")
print(info["name"])
drinks <- c("juice", "tea", "rum", "coffee")
info$drinks <- drinks
info_John = c("John", 2, 1, "milk")
for (i in 1:length(info_John)) {
  info[[i]] <- c(info[[i]], info_John[i])
}

#5
index <- "0,72;0,38;0,99;0,81;0,15;0,22;0,16;0,4;0,24"
num_vec <- gsub(",", ".", index)
num_vec <- as.numeric(unlist(strsplit(num_vec, ";")))

cars_matrix <- as.matrix(cars)

# 1
cars_speed <- cbind(1, cars_matrix[,1])

# 2
cars_dist <- cars_matrix[,2]

# 2
alpha <- solve(t(cars_speed) %*% cars_speed) %*% t(cars_speed) * cars_dist

# 4
vector <- as.vector(alpha)

# 5
alpha_c <- alpha[1,]
alpha_x <- alpha[2,]

# 6
cars_speed_lm <- cars_matrix[1, ]

# 7
cars_dist_lm <- alpha_c + cars_speed_lm * alpha_x

# 8
dist_residuals <- cars_dist_lm - cars_dist

# 9
cat("mean:", mean(dist_residuals))
cat("\nsd:", sd(dist_residuals))


# 10
print(cars_dist_lm)

# 11

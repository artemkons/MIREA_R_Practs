# 1
A <- diag(c(4,9), 2, 2)
rownames(A) <- paste0("eq", 1:2)
colnames(A) <- paste0("x", 1:2)

# 2
t <- eigen(A)
print(t[[1]])

# 3
I <- diag(x=1, 2, 2)
B <- I - A
print(B)

# 4
f <- c(4, 2)
u <- c(0.2, -0.3)
dim(f) <- c(2, 1)
dim(u) <- c(2, 1)

# 5
R_A <- solve(A)
u_result <- R_A %*% f


# 6
u1 = B%*%u+f
u2 = B%*%u1+f
u3 = B%*%u2+f
u4 = B%*%u3+f
u5 = B%*%u4+f
u6 = B%*%u5+f
u7 = B%*%u6+f

# 7
print("Пункт 7")
print(abs(u7 - u_result))

# 8
A <- A/max(A)
print(A)
f <- f/max(A)
print(f)

# 2
t <- eigen(A)
print(t[[1]])

# 3
I <- diag(x=1, 2, 2)
B <- I - A
print(B)

# 4
f <- c(4, 2)
u <- c(0.2, -0.3)
dim(f) <- c(2, 1)
dim(u) <- c(2, 1)

# 5
R_A <- solve(A)
u_result <- R_A %*% f


# 6
u1 = B%*%u+f
u2 = B%*%u1+f
u3 = B%*%u2+f
u4 = B%*%u3+f
u5 = B%*%u4+f
u6 = B%*%u5+f
u7 = B%*%u6+f

# 9
print("Пункт 9")
print(abs(u7 - u_result))
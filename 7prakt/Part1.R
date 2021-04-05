# 1
f1 <- function(x) {return(x^2)}
x <- -5:5
y <- sapply(x, f1)
#plot(x, y, type="l")
#text(0 , 20, Sys.Date())

# 2
#all_marks <- list()
#for (i in 1:4) {
#  student_marks <- c()
#  for (j in 1:3) {
#    msg <- sprintf("Введите оценку по предмету %i: ", i)
#    mark <- as.numeric(readline(msg))
#    student_marks <- c(student_marks, mark)
#  }
#  all_marks[[i]] <- student_marks
#}
#pie(all_marks[[3]])

# 3
# нули и производная??
f2 <- function(x) {
  res <- (3*x^2 - 30*x + 74.417)/(x - 5)
  return (res)
}
x <- -10:10
plot(x, f2(x), type="l")

# 4
# нули и производная??
f3 <- function(x) {
  res <- x^3 - 18*x^2 + 106.25*x-205.5
}
x <- -10:10
plot(x, f3(x), type="l")

# 5
# хз
a = 1
b = 1
x <- seq(-a, a, length=50)
y5 <- function(x) b * sqrt(1-x^2/a^2)
y <- seq(-b, b, length=50)
z5 <- function(x, y) rep(1, length(x))
z <- matrix(data=10, nrow=50, ncol=50)
persp(x, y, z, theta=30, phi=10, zlim=c(0, 300))

# 6
# тож хз

# 7
f7 <- function(x, y, z, a=2, b=2, c=2) c * sqrt(x^2/a^2 + y^2/b^2-1)
x <- y <- seq(-5, 5, length=51)
z <- outer(x, y, f7)
#persp(x, y, z, theta=30, phi=10)

# 8
#f8 <- function()

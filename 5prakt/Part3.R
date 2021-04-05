iter_method <- function(A, f, u0, n_iter, eps) {
  I <- diag(1, dim(A)[1])
  B <- I - A

  for (i in 1:n_iter) {
    u1 <- B %*% u0 + f
    if(max(abs(u1-u0)) < eps) {
      cat(c(i, max(abs(u1-u0))))
      break
    }
    u0 <- u1
  }
  return(u0)
}
A <- diag(c(4,9))
f <- matrix(data=1, nrow = 2, ncol = 1)
n_iter <- 1000
eps <- 10^-5
u0 <- matrix(data=0, nrow = 2, ncol = 1)

max_A <- max(A)
max_f <- max(f)

A <- A / max_A
f <- f / max_f
res0 <- solve(A,f)
res <- iter_method(A, f, u0, n_iter, eps)
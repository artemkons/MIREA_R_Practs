left_rect <- function() {
  left_rect_res <- 0
  for (i in 0:n-1) {
    left_rect_res <- left_rect_res + f(a+h*i) * h
  }
  return(left_rect_res)
}

mid_rect <- function() {
  mid_rect_res <- 0
  for (i in 0:n-1) {
    mid_rect_res <- mid_rect_res + f(a+h*i + h/2) * h
  }
  return(mid_rect_res)
}

trapezoid <- function() {
  trapezoid_res <- 0
  for (i in 0:n-1) {
    trapezoid_res <- trapezoid_res + (f(a+h*i) + f(a+h*(i+1))) * h/2
  }
  return(trapezoid_res)
}

symps <- function() {
  h_symps <- (b - a)/(2*n)
  x_vec <- seq(from = a, to = b, by = h_symps)
  
  c <- 0
  d <- 0
  for (i in 1:n) {
    c <- c + f(x_vec[2*i-1])
    d <- d + f(x_vec[2*i])
  }
  res <- (f(a) + f(b) + 4*c + 2*d)*(h/3)
  return(res)
}

f <- function(x) {
  ret <- (x^3 - x^2 + 5*x+ 5*sin(2*x+x^2) * cos(2*x+x^2) + 3)*exp(-x)
  return(ret)
}

solve_int <- function(method) {
  h <- (b - a)/n
  x0 <- a 
  
  res <- switch(method, 
                "1"=left_rect(),
                "2"=mid_rect(),
                "3"=trapezoid(),
                "4"=symps())
  
  return(res)
}

main <- function() {
  flag <- readline("Выберите способ ввода данных 1-консоль 2-из файла ")
  if(flag == "1") {
    a <- as.numeric(readline("Введите a: "))
    b <- as.numeric(readline("Введите b: "))
    n <- as.numeric(readline("Введите n: "))
    method <- as.character(readline("Введите номер метода: "))
    
    print(solve_int(method))
  } else if(flag == "2"){
    info <- as.numeric(readLines(con = "input.txt", n = 5, encoding = "UTF-8"))
    a <- as.numeric(info[1])
    b <- as.numeric(info[2])
    n <- as.numeric(info[3])
    method <- as.character(info[4])
  
    write.table(solve_int(method), "output.txt")
  } else 
    cat("Команда неясна!")
}

main()
step <- 1 # Шаг сетки
dekart_begin <- -5 # Начало сетки
dekart_end <- 5 # Конец сетки

x <- seq(from = dekart_begin, to = dekart_end, by = step)
y <- x

surface_matrix <- outer(X=x, Y=y, FUN=function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)

# 1
diag_sum <- 0
for (i in 1:dim(surface_matrix)[1]) {
  diag_sum <- diag_sum + surface_matrix[i, i]
}

data = c(c("number of matrix elements: ", length(surface_matrix)),
            c("number of rows: ", dim(surface_matrix)[1]),
            c("number of cols: ", dim(surface_matrix)[2]),
            c("sum of main diag elements: ", diag_sum),
            c("sum of main diag elements: ", diag_sum),
            c("sum of middle row elements: ", sum(surface_matrix[6,])), 
            c("sum of middle column elements: ", sum(surface_matrix[,6])),
            c("row sums: ", rowSums(surface_matrix)),
            c("col sums: ", colSums(surface_matrix)))
          
write(x = data, file = '~/storage/MIREA/3 sem/Rprakts/2prakt/summary.txt')


# 2
dekart_begin <- as.numeric(readline(prompt = "dekart_begin="))
dekart_end <- as.numeric(readline(prompt = "dekart_end="))
step <- as.numeric(readline(prompt = "step="))

x <- seq(from = dekart_begin, to = dekart_end, by = step)
y <- x

surface_matrix <- outer(X=x, Y=y, FUN=function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)


data = c(c("number of matrix elements: ", length(surface_matrix)),
         c("number of rows: ", dim(surface_matrix)[1]),
         c("number of cols: ", dim(surface_matrix)[2]),
         c("sum of main diag elements: ", diag_sum),
         c("sum of main diag elements: ", diag_sum),
         c("row sums: ", rowSums(surface_matrix)),
         c("col sums: ", colSums(surface_matrix)))

write(x = data, file = '~/storage/MIREA/3 sem/Rprakts/2prakt/summary2.txt')


# 3
info <- as.numeric(readLines(con = "input.txt", n = 5, encoding = "UTF-8"))

l = info[2] - info[1]
steps = info[3:5]

intervals = l / steps

x <- c(seq(from = dekart_begin, to = dekart_end, by = intervals[1]), 
       seq(from = dekart_begin, to = dekart_end, by = intervals[2]), 
       seq(from = dekart_begin, to = dekart_end, by = intervals[3]))
y <- x

surface_matrix <- outer(X=x, Y=y, FUN=function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)


data = c(c("number of matrix elements: ", length(surface_matrix)),
         c("number of rows: ", dim(surface_matrix)[1]),
         c("number of cols: ", dim(surface_matrix)[2]),
         c("sum of main diag elements: ", diag_sum),
         c("sum of main diag elements: ", diag_sum),
         c("row sums: ", rowSums(surface_matrix)),
         c("col sums: ", colSums(surface_matrix)))

write(x = data, file = '~/storage/MIREA/3 sem/Rprakts/2prakt/summary3.txt')





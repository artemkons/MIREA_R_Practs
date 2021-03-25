dekart_begin <- as.numeric(readline("dekart_begin="))
dekart_end <- -1 * dekart_begin 
step <- as.numeric(readline("Step="))

x <- seq(from = dekart_begin, to = dekart_end, by = step) #???????????????????????????????????????
y <- x

surface_matrix <- outer(X=x, Y=y, FUN=function(x,y) Re(exp(-1i * 0.5 * x * y)))
dimnames(surface_matrix) <- list(x, y)

diag_sum <- 0
for (i in 1:dim(surface_matrix)[1]) {
  diag_sum <- diag_sum + surface_matrix[i, i]
}

data = c(c("number of matrix elements: ", length(surface_matrix)),
         c("number of rows: ", dim(surface_matrix)[1]),
         c("number of cols: ", dim(surface_matrix)[2]),
         c("sum of main diag elements: ", diag_sum),
         c("sum of main diag elements: ", diag_sum),
         c("row sums: ", rowSums(surface_matrix)),
         c("col sums: ", colSums(surface_matrix)))

write(x = data, file = '~/storage/MIREA/3 sem/Rprakts/2prakt/summary2.txt')

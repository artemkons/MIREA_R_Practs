# 1
library(dplyr)
library(randomNames)
set.seed(1234)

names <- randomNames(100, which.names="first", ethnicity = 4)
ages <- sample(16:75, 100, replace = TRUE)
views <- c("right", "left", "moderate", "indifferent")
polit <- sample(views, 100, replace = TRUE)

data <- data.frame(names, ages, polit)
id <- 1:100

data <- dplyr::mutate(data, id)
from_25_to_30 <- dplyr::filter(data, ages >= 25 & ages <=30)
from_25_to_30_proportion <- round((dim(from_25_to_30)[1] / dim(data)[1]) * 100, digit = 1)

polit_views <- as.factor(polit)
print(polit_views)
data <- dplyr::mutate(data, polit_views = polit_views)


library(readr)
library(tidyr)
library(dplyr)

time_series_covid19_confirmed_global <- read_csv("~/storage/MIREA/3 sem/Rprakts/3prakt/time_series_covid19_confirmed_global.csv")
cat(c("Размерность", dim(time_series_covid19_confirmed_global)))
cat(c("\nИмена столбцов\n", names(time_series_covid19_confirmed_global)))

time_series_covid19_confirmed_global <- unite(time_series_covid19_confirmed_global, "Province/State", "Country/Region", col="country", sep=" ", na.rm=T)
time_series_covid19_confirmed_global <- dplyr::select(time_series_covid19_confirmed_global, -c(Lat, Long)) 

data <- time_series_covid19_confirmed_global %>%
  pivot_longer(cols=2:dim(time_series_covid19_confirmed_global)[2], 
               names_to="date", 
               values_to="cases") %>%
  pivot_wider(names_from = country, values_from = cases)

f <- function(x) as.character(as.Date(x, "%m/%d/%y"))
data$date <- unlist(lapply(data$date, FUN = f))

write.table(data, file="~/storage/MIREA/3 sem/Rprakts/3prakt/data_output/data.txt")
write.csv(data, file="~/storage/MIREA/3 sem/Rprakts/3prakt/data_output/data.csv")
write.xlsx(data, file="~/storage/MIREA/3 sem/Rprakts/3prakt/data_output/data.xlsx")
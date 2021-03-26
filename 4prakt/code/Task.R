library(xlsx)
library(tidyr)
library(dplyr)
library(readr)
library(lubridate)

GAZ <- read_tsv("~/storage/MIREA/3 sem/Rprakts/4prakt/GAZ.csv", col_types = "Ddddddccc",
                locale = locale(decimal_mark = ",", date_format = "%d/%m/%Y"))

GAZ <- tidyr::drop_na(GAZ) %>%
       dplyr::mutate(`Туст °K` = `Туст °С` + 273, 
                     `Туст °С` = NULL,
                     ID = as.ordered(ID),
                     `Куст` = as.ordered(`Куст`),
                     `Группа` = as.ordered(`Группа`),
                     `Газ/конд` = `газ м3/сут` / `конд-т м3/сут`,
                     `Газ/вод` = `газ м3/сут` / `вода м3/сут`,
                     `Вод/конд` = `вода м3/сут` / `конд-т м3/сут`) %>%
      filter(lubridate::year(`дата замера`) == 2018)

GAZ_2018_111 <- filter(GAZ, ID == 111)

# 8 
IDs <- c(levels(GAZ$ID))
IDs_wat_less_2 <- c()
for(el in IDs){
  row <- filter(GAZ, GAZ$ID == el)
  if(max(row$`вода м3/сут`) <= 2){
    IDs_wat_less_2 <- c(IDs_wat_less_2, el)
  }
}


# 9
IDs_gaz_more_1000 <- c()
for(el in IDs){
  row <- filter(GAZ, GAZ$ID == el)
  if(min(row$`газ м3/сут`) >= 300000){
    IDs_gaz_more_1000 <- c(IDs_gaz_more_1000, el)
  }
}
print(IDs_gaz_more_1000)

# 10
max <- 0
max_group <- ""
for(el in IDs){
  row <- filter(GAZ, GAZ$ID == el)
  s <- sum(row$`газ м3/сут`)
  if(s > max){
    max <- s
    max_group <- as.vector(row$`Группа`[1])
  }
}
print(max_group)

# 11
max <- 0
max_group <- ""
for(el in IDs){
  row <- filter(GAZ, GAZ$ID == el)
  s <- sum(row$`вода м3/сут`)
  if(s > max){
    max <- s
    max_group <- as.vector(row$`Группа`[1])
  }
}
print(max_group)

# 12
max_otn <- 0
max_group_2 <- ""
for(el in IDs){
  row <- filter(GAZ, GAZ$ID == el)
  m <- mean(row$`Газ/вод`)
  
  if(m > max_otn & !is.nan(m)){
    max <- s
    max_group_2 <- as.vector(row$`Группа`[1])
  }
}
print(max_group_2)
    


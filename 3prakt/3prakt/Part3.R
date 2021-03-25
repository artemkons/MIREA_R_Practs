data <- carData::Ornstein

empty <- c()
for (i in names(data)){
  empty <- c(empty, dplyr::filter(data, is.na(i)))
}

s_1 = dplyr::filter(data, assets >= 10000 & assets <= 20000)
s_2 = dplyr::filter(data, interlocks <= 30)
s_3 = data %>% dplyr::filter(sector == "TRN") %>% dplyr::filter(nation == "CAN")

log_assets <- log(data$assets)

data <- dplyr::mutate(data, log_assets) 

#хз хз




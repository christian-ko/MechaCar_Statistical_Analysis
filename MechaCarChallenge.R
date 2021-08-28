library(dplyr)
car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,car_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,car_df))

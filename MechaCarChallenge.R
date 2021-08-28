library(dplyr)
car_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,car_df)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,car_df))

coil_data <- read.csv('Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
total_summary <- coil_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary <- coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

t.test(coil_data$PSI, mu=1500)
t.test(subset(coil_data, Manufacturing_Lot == 'Lot1')$PSI, mu=1500)
t.test(subset(coil_data, Manufacturing_Lot == 'Lot2')$PSI, mu=1500)
t.test(subset(coil_data, Manufacturing_Lot == 'Lot3')$PSI, mu=1500)

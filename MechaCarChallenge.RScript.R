install.packages("dplyr")
library(readr)
MechaCar_mpg <- read_csv("~/Desktop/Class Folder/R_Analysis/MechaCar_mpg.csv")
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))

Suspension_coil <- read_csv("~/Desktop/Class Folder/R_Analysis/Suspension_Coil.csv")
library(tidyverse) 
total_summary <- Suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary


PSI_mean <- t.test(Suspension_coil$PSI, mu=1500)
PSI_mean
Lot1_mean <- t.test(subset(Suspension_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500)
Lot1_mean
Lot2_mean <- t.test(subset(Suspension_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500)
Lot2_mean
Lot3_mean <- t.test(subset(Suspension_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500)
Lot3_mean
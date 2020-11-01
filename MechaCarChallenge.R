library(tidyverse)
MechaCar_Table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

head(MechaCar_Table)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_Table)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_Table))

Suspension_Table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

head(Suspension_Table)

total_summary <- Suspension_Table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
total_summary

lot_summary <- Suspension_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')
lot_summary

t.test(Suspension_Table$PSI,mu=mean(Suspension_Table$PSI))

lot1 <- Suspension_Table$PSI[Suspension_Table$Manufacturing_Lot=="Lot1"]
lot2 <- Suspension_Table$PSI[Suspension_Table$Manufacturing_Lot=="Lot2"]
lot3 <- Suspension_Table$PSI[Suspension_Table$Manufacturing_Lot=="Lot3"]



t.test(lot1,mu=mean(lot1))

t.test(lot2,mu=mean(lot2))

t.test(lot3,mu=mean(lot3))

library(dplyr)

MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_mpg))

Suspension_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

total_summary <- summarize(Suspension_Coil, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =sd(PSI))

group <- group_by(Suspension_Coil, Manufacturing_Lot)

lot_summary <- summarize(group, Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =sd(PSI))


# import libraries
library(dplyr)
# import and read mpg csv
MechaCar <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
# run linear regression model on all variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar)
# generate summary of lm
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar))
# import and read coils csv
coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
# create summary dataframe for entire set of data
total_summary <- coil %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# create summary dataframed with the lot column grouped
lot_summary <-  coil %>% group_by(Manufacturing_Lot) %>%
  summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# run a t test across all manufacturing lots
t.test(coil$PSI, mu=1500)
# get subsets of each lot
lot1 <- subset(coil, Manufacturing_Lot == 'Lot1')
lot2 <- subset(coil, Manufacturing_Lot == 'Lot2')
lot3 <- subset(coil, Manufacturing_Lot == 'Lot3')
# run a t test for each lot of manufactured coils
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)

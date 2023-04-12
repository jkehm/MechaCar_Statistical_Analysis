# MechCarChallenge -- Module 16 Challenge
# Part 1: Linear Regression to Predict MPG

# Load in dependencies
library(tidyverse)
# Import and read MechaCar_MPG.csv as a df
mecha_mpgs <- read.csv(file= '../MechaCar_Statistical_Analysis/MechaCar_mpg.csv')
# Perform linear regression, pass all 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_mpgs)
# Use summary() function, determine p and r-squard values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_mpgs))
# Once completed, commit items to GitHub

# Part 2: Create Visualizations for the Trip Analysis

# Import and read in Suspension_Coil.csv
suspension_coil <- read.csv(file = '../MechaCar_Statistical_Analysis/Suspension_Coil.csv')
# Create total_summary df
total_summary <- suspension_coil %>% summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Create lot_summary df 
lot_summary<- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
# Once complete, push items to GitHub

# Part 3: T-Tests on Suspension Coils

# Use T-Test to determine if the PSI across all lots are statisticaly different from pop. mean
t.test(suspension_coil$PSI, mu=1500)
# Write 3 more RScripts using t.test() and its subset() argument to detrmine if the PSI for each manufacturing
# lot is statiscally different from the pop. mean of 1,500 psi

# Lot 1
t.test((subset(suspension_coil, Manufacturing_Lot=='Lot1'))$PSI, mu=1500)
# Lot 2
t.test((subset(suspension_coil, Manufacturing_Lot=='Lot2'))$PSI, mu=1500)
# Lot 3
t.test((subset(suspension_coil, Manufacturing_Lot=='Lot3'))$PSI, mu=1500)
# Once complete, push items to GitHub






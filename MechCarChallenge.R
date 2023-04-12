# Deliverable 1
# Part 1: Linear Regression to Predict MPG

# Load in dependencies
library(tidyverse)
# Import and read MechaCar_MPG.csv as a df
mecha_mpgs <- read.csv(file= '../MechaCar_Statistical_Analysis/MechaCar_mpg.csv')
# Perform linear regression, pass all 6 variables
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_mpgs)
# Use summary() function, determine p and r-squard values
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, mecha_mpgs))
# Save this RScript to GitHub

# 
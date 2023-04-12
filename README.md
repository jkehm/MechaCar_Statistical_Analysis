# MechaCar_Statistical_Analysis
### Summary
AutosRU's are having manufacturing issues with their newest prototype, the MechaCar. The Manufacturing team has asked for help determining issues they are facing in the manufacturing process. 

In the Module 16 challenge we will be working through the following items:
* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

## Deliverable 1: Linear Regression to Predict MPG
In order to complete the first Deliverable a multiple linear regression analysis is performed for each value. This way we can predict which of these variables have the biggest impact on the MPG of the MechaCar. From there, we utilize the <code>summary()</code> function to determine the p-value and r-squared values.
![Hopefully an image](https://github.com/jkehm/MechaCar_Statistical_Analysis/blob/main/images/linear%20regression%20deliv%201.png)

![Hopefully another image](https://github.com/jkehm/MechaCar_Statistical_Analysis/blob/main/images/summary%20deliv%201.png)

#### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The Pr(>|t|) value in the summary image above represents the probability that each coefficient contributes a random amount of varaince to the linear model. Keeping that in mind, the larger Pr(>|t|) values are indicitave of affecting the MPG's of the vehicle. So, vehicle_weight, spoiler_angle, and AWD are the most likely to affect the MPG's of the vehicle. Whereas vehicle_length and ground_clearance are likely to have the smallest influence on fuel economy.
####  Is the slope of the linear model considered to be zero? Why or why not?
First off, let us determine the linear model from the summary output. Specifically the Estimate for the Coefficients.

<code>mpg= 6.267vehicle_length + 0.001245vehicle_weight + 0.06877spoiler_angle + 3.546ground_clearance -3.411AWD -104.0 </code>

Based on that, we can not say that the slope of the linear model is considered zero. This is because most of the coefficients for these variables are significant. More importantly, the p-value of 5.35e-11 is much smaller than our p-value of 0.05. This is significant evidence to reject the null hypothesis, which also means that are slop is non-zero. 
####  Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
To determine this we need to take a look at our r-squared value, which is 0.7149. In other words, 71.49% of the variability of the dependent variable (MPG) can be explained by the linear regression model. This rather high value tells us that the linear model does predict MPG for the MechaCar effectively.

## Deliverable 2: Summary Statistics on Suspension Coils
![Hopefully another other image](https://github.com/jkehm/MechaCar_Statistical_Analysis/blob/main/images/total_summary_deliv_2.png)

![Hopefully another other other image](https://github.com/jkehm/MechaCar_Statistical_Analysis/blob/main/images/lot_summary_deliv_2.png)

#### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
Yes and no. When we perform the first an summary table first the entire dataset, the variance of 62.294psi is within the 100psi design specification. However, when we break this data into lots in the second summary, we see a different picture. The variance for Lots 1 and 2 are very much within our design specification, and Lot1 is very impressive. Lot 3 however, shows a variance of 170.286psi. Which is extremely far above our design specification. So I would implore the manufacturing engineers to see what is going on in Lot 3. Is it a staff issue, is the tooling wearing quicker than we expect, or see if there is a totally different issue going on. 

## Deliverable 3: T-Tests on Suspension Coils
![Hopefully another other other other image](https://github.com/jkehm/MechaCar_Statistical_Analysis/blob/main/images/one_sample_t-test_deliv_3.png)

![Hopefully another other other other other image](https://github.com/jkehm/MechaCar_Statistical_Analysis/blob/main/images/lot_1_t-test_deliv_3.png)

![Hopefully another other other other other other image](https://github.com/jkehm/MechaCar_Statistical_Analysis/blob/main/images/lot_2_t-test_deliv_3.png)

![Hopefully another other other other other other other image](https://github.com/jkehm/MechaCar_Statistical_Analysis/blob/main/images/lot_3_t-test_deliv_3.png)

#### Findings from the T-Test

## Deliverable 4: Study Design: MechCar vs Competition

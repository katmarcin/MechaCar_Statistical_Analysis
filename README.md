# MechaCar_Statistical_Analysis

## Overview

The purpose of this statistical analysis is to review production data for AutosRU for insights that may help the manufacturing team on their newest prototype, the MechaCar. Several different analyses were performed such as multiple linear regressin analysis, summary statistics, and t-tests to understand factors that may predict miles-per-gallon (MPG) and pounds per square inch (PSI) of the vehicles. Manufacturing lots were also analyzed against a population to test for significant differences. All statistical analyses were performed within R Studio. Tidyverse and readr packages were used to import the necessary functions for the statistical analyses used in this project.

### Data Source

MechaCar_mpg.csv; Suspension_Coil.csv

### Tools

R Studio; readr package; tidyverse package

## Linear Regression to Predict MPG

Vehicle length, vehicle weight, and ground clearance are the three variables that provided a non-random amount of variance to the MPG values in the dataset. In other words, the variables have a statistically significant impact on MPG. This is determined by examining the p-values in the dataset. Statistical metrics were obtained by implementing the "summary()" function to the multiple linear regression statement. Our p-values are displayed under "Pr(>ltl)" in the R Studio Console.

The statistical test for slope, or intercept is estimated at -1.040e+02. The p-value of that intercept is 5.08e-08. Because the slope of the linear regression model is not zero, and because the p-value of that intercept is less than 0.05, we can state that there is sufficient evidence to reject our null hypothesis.

To assess whether this linear model predicts MPG of MechaCar prototypes effectively, we examined the r-squared value of the model. The r-squared value  measures the co-variance of the variables, or how well the data fits the regression model. With a multiple r-squared value of 0.7149, we can predict a strong positive association of independent variables to the dependent variable. In other words, roughly 71% of the data fits the regression model, indicating a strong fit for the model.

<img src="https://github.com/katmarcin/MechaCar_Statistical_Analysis/blob/47b7bfab9071e069bf432dd849d19e3d68919dfb/images/lin_regress_mpg.png" width="500" height="350"/>

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. This is determined by examining the PSI variable of the dataset. PSI stands for pound-force per square inch. The current manufacturing data meets this design specification for all manufacturing lots in total with a variance value of approximately 62.29. This is well under the 100 pound per square inch limit. However, when examined individually, only lots 1 and 2 meet the criteria with variance values of approximately 0.98 and 7.47 respecively. Lot 3 has a variance value of 170.29, well over the 100 pound per square inch limit and does not meet the design specification for the MechCar suspension coils.


<img src="https://github.com/katmarcin/MechaCar_Statistical_Analysis/blob/5ec8cf43a9bb9f702cea60260da256711c8f8e45/images/total_summary.png" width="470" height="80"/>


<img src="https://github.com/katmarcin/MechaCar_Statistical_Analysis/blob/2e557d4cc9e533ac4d5e5ddb25392ab87a8f8677/images/lot_summary.png" width="550" height="120"/>

     
## T-Tests on Suspension Coils

The one-sample t-test, performed by the t.test() function, is used to compare the means of two samples to determine statistical differences. The population mean of 1500 pounds per square inch (PSI) is compared to the lots altogether and individually. The-test for all of the lots compared to the population mean determined a p-value of approximately 0.06. Because this p-value is greater than 0.05, there is no statistical difference between the means of the population and that of the lots as a whole. 

<img src="https://github.com/katmarcin/MechaCar_Statistical_Analysis/blob/8d842ea7cae9d201f0605488c1ef41b1533ed108/images/ttest_all.png" width="350" height="250"/>

For the t-test comparing Lot 1 and the population mean, the p-value returned is 1. Because this p-value is greater than 0.05, there is no statistical difference between the means of the population and that of Lot 1

<img src="https://github.com/katmarcin/MechaCar_Statistical_Analysis/blob/8d842ea7cae9d201f0605488c1ef41b1533ed108/images/ttest_lot1.png" width="500" height="250"/>

For the t-test comparing Lot 2 and the population mean, the p-value returned is approximately 0.61. Because this p-value is greater than 0.05, there is no statistical difference between the means of the population and that of Lot 2.

<img src="https://github.com/katmarcin/MechaCar_Statistical_Analysis/blob/8d842ea7cae9d201f0605488c1ef41b1533ed108/images/ttest_lot2.png" width="500" height="250"/>

Lastly, for the t-test comparing Lot 3 and the population mean, the p-value returned is approximately 0.04. Because this p-value is less than 0.05, it can be said that there is a statistical difference between the observed PSI mean of Lot 3 and the population  PSI mean. The null hypothesis is therefore rejected for Lot 3 only.

<img src="https://github.com/katmarcin/MechaCar_Statistical_Analysis/blob/8d842ea7cae9d201f0605488c1ef41b1533ed108/images/ttest_lot3.png" width="500" height="250"/>


## Study Design: MechaCar vs Competition

To quantify how MechaCar performs against its competitors, an additional statistical study can be designed that focuses on fuel economy and greenhouse gas rating, a metric that definitely would be of interest to consumers in a market that has seen a consumer shift towards conscious consumerism. This metric is commonly recognized as one of the features of a Monroney sticker, or window sticker, that is displayed on the windows of new vehicles in car dealerships. The market recently has seen many changes to the ways new cars are designed, such as increasing the efficiency of vehicle technology to offset CO2 emissions and a wave of hybrid and EV vehicles. The fuel economy and greehouse gas rating is determined by the EPA or Environmental Protection Agency, a federal agency that aims to protect human health and the environment. The label assigns a vehicle from a scale of 1 (worst) to 10 (best). With regards to gasoline vehicles, the rating is solely focused on tailpipe CO2 emissions. Thus, it is important for examine this metric and examine how well MechaCar performs compared to its competitors. 

### Metric to Test

MechaCar's fuel economy and greenhouse gas ratings, numerical from a scale of 1 to 10, is compared to fuel economy and greenhouse gas ratings of various competing vehicles on the market.

### Null and Alternative Hypotheses

The question posed: Is there a statistical difference between the distribution means for fuel economy and greenhouse gas from two samples?

H0: MechCar prototype's fuel economy and greenhouse gas rating is no different than the average rating determined in competitor vehicles currently on the market.

Ha: MechaCar prototype's fuel economy and greenhouse gas rating is better than the average rating of competitor vehicles currently on the market.

### Statistical Test 

To perform such a study, we use a two-sample t-test to compare Sample A (the MechaCar prototype) and Sample B (any competitors or competitors as a whole). 

### Data Required to run the Statistical Test

To perform this statistical test, we would require the fuel economy and greenhouse gas rating for the MechaCar and those of competitors, as determined by the EPA. 

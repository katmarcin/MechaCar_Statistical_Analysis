# MechaCar_Statistical_Analysis

## Overview

## Linear Regression to Predict MPG

a. Output from the Multiple Linear Regression to Predict MPG

Vehicle length, vehicle weight, and ground clearance are the three variables that provided a non-random amount of variance to the mpg values in the dataset. In other words, they variables have a statistically significant impact on mpg. This is determined by examining the p-values in the dataset. Statistical metrics were obtained by implementing the "summary()" function to the multiple linear regression statement. Our p-values are displayed under "Pr(>ltl)" in the R Studio Console.

The statistical test for slope, or intercept is estimated at -1.040e+02. at intercept is 5.08e-08. Because the slope of the linear regression model is not zero, and because the p-value of that intercept is less than 0.05, we can state that there is sufficient evidence to reject our null hypothesis.

To assess whether this linear model predict mpg of MechCar prototypes effectively, we examined the r-squared value of the model. The r-squared value  measures the co-variance of the variables, or how well the data fits the regression model. With a multiple r-squared value of 0.7149, we can predict a strong positive association of independent variables to the dependent variable. In other words, roughly 71% of the data fits the regression model, indicating a strong fit for the model.

<img src="https://github.com/katmarcin/MechaCar_Statistical_Analysis/blob/47b7bfab9071e069bf432dd849d19e3d68919dfb/images/lin_regress_mpg.png" width="500" height="350"/>

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

// total summary image

// lot summary image

     

## T-Tests on Suspension Coils



## Interpretation of the Multiple Linear Regression Results

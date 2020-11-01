# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

| Variable        | P-value       | Random vs Non-Random  |
| --------------- |:-------------:| ---------------------:|
| Intercept       | 5.08e-08      | <.05, Non-Random      |
| Vehicle_length  | 2.60e-12      | <.05, Non-Random      |
| Vehicle_weight  | 0.0776        | >.05, Random          |
| Spoiler_angle   | 0.3069        | >.05, Random          |
| Ground_clearance| 5.21e-08      | <.05, Non-Random      |
| AWD             | 0.1852        | >.05, Random          |


### Is the slope of the linear model considered to be zero? Why or why not?

The p-value of our linear regression analysis is 5.35e-11 which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model is not zero.


### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The model is statistically significant and accurate ~71% of the time, but the lack of significant variables may be evidence of overfitting. It would not be a bad idea to investigate other data points until the significance of the intercept is reduced. 


## Summary Statistics on Suspension

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

At the aggregate level, it appears that our manufacturing data meets the design specifications:

![Total_Summary](https://github.com/pritchardjeff/MechaCar_Statistical_Analysis/blob/main/Total_Summary.PNG)

Once we break the data down by Manufacturing Lot, we find lot three does not meet our design specifications:

![Lot_Summary](https://github.com/pritchardjeff/MechaCar_Statistical_Analysis/blob/main/Lot_Summary.PNG)

## T-Tests on Suspension Coils

| Summary         | P-value       | Outcome                                   |
| --------------- |:-------------:| -----------------------------------------:|
| Total           | 1             | >.05, two means are statistically similar |
| Lot1            | 1             | >.05, two means are statistically similar |
| Lot2            | 1             | >.05, two means are statistically similar |
| Lot3            | 1             | >.05, two means are statistically similar |


## Study Design: MechaCar vs Competition

### Metric to be tested

Resale value as a % of original MSRP.

### Alternative Hypothesis

MechaCar vehicles retain 10% more value as a percentage of original MSRP than competitor vehicles.

### Statistical test and Description

We will use a Two-Sample t-Test to determine if there is a statistical difference between the distribution means of MechaCar vehicles resold as percentage of original MSRP and all other competitors as a % of original MSRP.

### Data needed to complete test

We will need a dataset that includes original MSRP, Vehicle Manufacturer, and most recent price sold.

With this data, we will need divide the most recent price sold for each vehicle by the original MSRP to get the resale value as a % of original MSRP.

We will then do a Two-Sample t-Test on the resale value as a percentage of original MSRP for MechaCar vs the total population.










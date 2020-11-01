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

The model is statistically significant and accurate ~71% of the time, but the lack of significant variables may be evidence of overfitting. It would not be a bad idea to look into other data points until the significance of the intercept is reduced. 


## Summary Statistics on Suspension

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

At the aggregate level, it appears that our manufacturing data meets the design specifications:

![Total_Summary](xxxxxx)

Once we break the data down by Manufacturing Lot, we find lot three does not meet our design specifications:

![Lot_Summary](xxxxxx)





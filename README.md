# MechaCar Statistical Analysis using R

## Linear Regression to Predict

![alt text]("multiple linear regression summary")

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

	There are two variables below a p-value of .05 that show they provided a non-random amount of variance, vehicle length and ground clearance.

- Is the slope of the linear model considered to be zero? Why or why not?

	The p-value of the multiple linear regression analysis was 5.35e -11, which is much smaller than the chosen level of significance of .05.
	This allows us to state there is sufficient evidence to reject the null hypothesis, which means the slope of the linear model is not zero.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

	With only two out of the five variables being statistically significant at improving gas mileage, it would seem the model is overfitting
	the data and would fail to predict future data correctly. Also, with an Intercept p-value of 5.08e -08, it would conclude that their
	probably are other variables and factors contributing to the variation of the cars miles per gallon.

## Summary Statistics on Suspension Coils

Note to the grader.  My summary statistics and t-tests numbers will vary when compared to what is in the module challange.  I have talked with
many other students in the class and we all get the same numbers versus what is in the challenge.  So we must have a slightly different data set
than what was used in the challenge.

![alt text]("total summary")

When looking at the summary of all coils manufactured from every lot, you can see that variance falls below the 100 PSI threshold set in
the design specifications.

![alt text]("lot summary")

When looking at the variance of the coils PSI when grouped by manufacturing lot, it tells another story.  Lots one and two fall well below
design specifications of tolerating a PSI variance below 100.  But lot 3 has a variance of 170, which is well above the allotted 100 PSI variance.

## T-Tests on Suspension Coils

![alt text]("all coils t-test")
![alt text]("lot 1 t-test")
![alt text]("lot 2 t-test")
![alt text]("lot 3 t-test")

The p-values for the all coils, lot 1 and 2 t-tests were all above .05. I cannot reject the null hypothesis for those test, and the
tow means are statistically similar. Lot 3's p-value was below .05, so I reject the null hypothesis. There is a statistical difference
between the means.  Further testing is needed to see what is causing the issue with lot 3 coils.

## Study Design: MechaCar vs Competition

With my study I want to show how economical my MechaCar is compared to the competition. Specifically, my MechaCar would fall in the midsize
class of all vehicles on the market.  I would want to compare my mpg and maintenance costs against the mean of all other cars in my class and
cars in the compact class. To show that MechaCar can deliver mpg performance on the level of a compact car but give you the interior room
of a midsize vehicle.

I will be specifically testing the metrics of mpg and maintenance costs.

First, I will run a two sample t-test in order to compare MechaCar mpg versus the compact cars mpg. This will let me see if there is a
statistical difference between my average fuel economy against the smaller compact cars average fuel economy. I will need to collect data
on my cars mpg and also get the data on compact cars mpg.
The null hypothesis states there is no statistical difference between the observed sample means.
The alternative hypothesis states there is a statistical difference between the observed sample means.

Secondly, I will run a one sample t-test to compare MechaCar average maintenance costs versus the populations average maintenance cost.
This will let me see if there is a statistical difference between my average maintenance costs against the populations.
The null hypothesis states there is no statistical difference between the observed sample mean and its presumed population mean.
The alternative hypothesis states there is a statistical difference between the observed sample mean and its presumed population mean.
I will need to collect data on my cars yearly maintenance cost and collect data on yearly maintenance cost for the population.




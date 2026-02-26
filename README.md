# Sales_Pipeline_Analysis


In this project, I analyzed product performance through a variety of lenses for a Sales Pipeline using Excel.

The company MG asked its analysts to perform a product performance analysis to find which products were performing poorly and possible solutions.
Below are the results.

You can see the dashboard I created using Excel [here].

I also performed the same commands using SQL [here].

# Data Structure and Validation
The data was cleaned to fix text inconsistencies as well as create several new columns to be used in calculation.


# Executive Summary

In order to pinpoint which MG products were performing poorly and which were performing well, we first needed to decide on key metrics for evaluation.
We decided to use Close Percentage as well as total sales in combination because this allowed us to find which products had the greatest room for growth.

<img src="/assets/graph1.png" width="600">

The first image displays the close percentage for each of the various products sold by MG. Based on our metrics of close percentage and total sales, the MG Advanced is the product
with the most room for growth. With a close percentage well below the average, as well as a high sales count, it's underperformance is highly impactful to revenue, unlike the GTK 500, which despite its low
close percentage, receives only a small fraction of the sales of the MG Advanced.

Now that we have identified the most important asset, we need to understand why the MG Advanced is underperforming. Unfortunately, we don't have access to things like customer satisfaction scores, so instead
we will look at surrounding factors to see if there is a correlation to the MG Advanced's underperformance.

The first factor we will look at is time, to see if there was a time period where the MG Advanced sold worse. This may allow us to identify the factors that led to its underperformance.

<img src="/assets/graph2.png" width="600">

However, we see that the MG Advanced has remained relatively steady in sales throughout the past year, meaning we can cross time off our list of potential factors.

The next factor we will look at is region. With the variable regional_office, we can examine the close percentage of the MG Advanced for each of the three offices, Central, East, and West.

<img src="/assets/graph3.png" width="600">

We see that the Central region seems to struggle much more at closing deals with the MG Advanced than the other two regions. This is a useful insight that we will want to investigate further.

For the purposes of this project, this is as far as the analysis will go for now. If we were to continue the analysis, two options we could choose would be to examine the manager variable from the sales_team
table, and the account variable from the sales_pipeline and accounts tables. Using these variables, we could find out if the struggle to close deals applies to the Central region generally, or if it's to a specific manager or account within the Central region.

Lastly, we analyze the top salesmen in the company for the MG Advanced to see if there is anything we can learn from their selling.

<img src="/assets/graph4.png" width="600">

We recommend a further investigation or analysis of Hayden Neloms sales record to see what can be learned from him that can be applied company-wide, or specifically to the Central region.

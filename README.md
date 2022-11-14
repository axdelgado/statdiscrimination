# Statistical Discrimination Code - Alvin

## Details

Here lives the data analysis codebase for Alvin Delgado's work for "Statistical Discrimination in the Pay-setting Process", a Tobin RA project led by Professor Laura Adler of the Yale School of Management.

## Changelog

<details><summary><b>9/26/2022</b></summary>

* initiated files for 1) data processing, 2) data analysis
* added code to ingest all datasets, merged years where necessary

</details>










<details><summary><b>9/27/2022</b></summary>

* added function for chi-square quantile plotting (ran into many errors with size of data)
* created basic comparison plots between genders for pay (ran into issues with factors)

</details>









<details><summary><b>9/28/2022</b></summary>

* reassigned gender labels in all dataframes
* rewrote comparison plot code for easy iteration and other variables

</details>








<details><summary><b>10/1/2022</b></summary>

* checked for distribution of gender labels reported
* checked counts for different years to see if # of survey respondants changed significantly (it did!)
* checked to see if there are any repeat responses in each year

</details>










<details><summary><b>10/4/2022</b></summary>

Updates to `data_processing.Rmd`:
* Transormed date text field to date field with `lubridate`
* Reorganized how data is loaded, reshaped, and saved
* Moved some functions from the processing document to the analysis document
* Added functionality 

---

Updates to `data_analysis.Rmd`
* Added new column to datasets to "round" data to current month
* Drew histograms of date distributions to check for outliers
    * There were quite a few in 2015 and 2016!
* Checked distribution of industries across responses
* Added `dfList`, a list of the yearly dataframes, which makes iterating over years *much* easier.

---

Notes:
* Dates seem to be fairly uniformly distributed across the years, and there were only a few anomalies (see question below).
* There's about 10-15% data on industry missing from each year. The spread is definitely not uniform.
* For fun: go back and clean up plotmaking using `dfList` and `lapply()`

---

Questions:
* There are a lot of entries that have `NA` for gender, what should we do with these?
* Should we just get rid of dates outside of the year each table is supposed to be from?
* How should we continue exploring industry type, if at all?

</details>








<details><summary><b>10/5/2022</b></summary>

Updates to `data_analysis.Rmd`
* Added histograms of `YRS_EXP`
* Removed negative values for `YRS_EXP`
* Checked distribution of total compensation

---

Notes:
* There are a lot of high outliers for total compensation

---

Questions:
* Is it good practice to remove invalid data rows (e.g. neg values above), or just replace the invalid data entries with `NA`?
* How should we be choosing to remove outliers in general?

</details>








<details><summary><b>10/9/2022</b></summary>

Updates to `data_processing.Rmd`:
* Cleaned `manager_relationship` var to be all numeric
* Cleaned `fair_pay` var to be all numeric
* Cleaned `employer_satisfaction` to be all numeric
* Cleaned `fair_pay` to all be numeric
* Started cleaning `phdyr_graduate`
    * I should check over the excel sheets to see how to transform this (i.e. account for both years *and* "did not graduate")

---

Updates to `data_analysis.Rmd`
* 

---

Notes:
* A reminder from last meeting that the .xlsx for 2019 includes data from the first half of 2020
* `Fair_pay` has almost only `NA` for 2015,2016, then about 25-33% `NA` for other years
* `employer_satisfaction` is missing about half the data for 2019,2020. Even though the dataframes contain an incorrect period of data, these missing values seem consistent across both years. 
* I am going to stop checking for missing data until I've successfully merged the datasets.
* `manager_relationship`, `fair_pay`, `employer_satisfaction`, and `fair_pay` are all on a scale from 1-5 for "Strongly Disagree" to "Strongly Agree"

---

Questions:
* 

</details>








<details><summary><b>10/10/2022</b></summary>

Updates to `data_processing.Rmd`:
* Cleaned `phdyr_graduate` - turned into a factor
* Cleaned `mbayr_graduate` - turned into a factor
* Merged all years' datasets into one master called `alldata`
* Saved `alldata` as easily loadable .RData and .csv files for ingesting into `data_analysis`
* Removed code for saving each year's dataset individually to a .RData file
* Added code to sanity check `TCC`

---

Updates to `data_analysis.Rmd`
* 

---

Notes:
* According to [DQYDJ](https://dqydj.com/average-median-top-individual-income-percentiles/), the 99th percentile of income was $401,622, while in 2020 it was $357,552.
    * Note: this site used BLS data, but I wasn't sure if I should have calculated this myself, or gotten an academic source. [This](https://data.bls.gov/cgi-bin/surveymost?ce) might be a good alternative to do it by hand.
    * The 99th percentile of `TCC` in our data was 212500
* `TCC` didn't seem to have any people who reported hourly wages as total compensation (min was about 4400)
    * cool observation: there's spikes at every $1000
* Strange: there are only 3 "other" responses to gender in 2016.

</details>









<details><summary><b>10/11/2022</b></summary>

Updates to `data_processing.Rmd`:
* updated code to work with the merged dataframe `alldata`

---

Updates to `data_analysis.Rmd`
* Cleaned `yrs_exp` - made negative values NA
* Fixed `salary` graphs by gender, switched `salary` with `TCC` b/c less missing data.\

---

Notes:
* There's about 12% missing data for `Industry`
* There's some pretty stark differenes in industry by gender in traditionally gendered roles (e.g. education, construction, and healthcare/social assistance)
* 

---

Questions:
* How was the original data formatted? I was wondering about why some years have about 500-1000 entries from the next year


</details>





<details><summary><b>10/12/2022</b></summary>

Updates to `data_processing.Rmd`:
* 

---

Updates to `data_analysis.Rmd`
* Compared Industry by Gender (tables, barplots)
* Compared Management by gender
* Compared education by gender (tables, barplots)
* Compared age by gender
* Calculated proportional data across states and cities

---

Notes:
* There aren't huge differences between education level and gender
    * Minor differences: larger proportions of women obtain associate's, health profession, master's, and non-degree certificates comapred to men
    * Men obtained more GED/high school diplomas (does this make sense), MBAs, and PHDs compared to women.
* There is a narrowing of the proportion of management positions held by men and women over time
* Majority of responses are from young people - this might affect broader trends we see?

---

Questions:
* How might patterns or trends in our data effect future analyses?

</details>








<details><summary><b>Week of 10/17</b></summary>

Updates to `data_processing.Rmd`:
* Created tables of highest paying occupations (`onet_broad`)
    * Filtered dataset to exclude data higher than the 2020 99th percentile in individual
    income
* Reordered commands for efficiency
* Filtered for 24 <= age <= 54 
* Recoded `NA` in `Gender` to "Missing"

---

Updates to `data_analysis.Rmd`
* 

---

Notes:
* The majority of outliers are chief executives, physicians, lawyers, operations 
managers, sales managers, financial analysts, and management analysts. This is when we filter data
higher than the 2020 99th percentile, 401622 (see above for source)
    * Since these jobs are fairly similar, I decided to just filter based on the 
    99th percentile alone. Even if we end up choosing another year's 99th percentile
    to do a cutoff, the types of employees that would be excluded from our data would be 
    more or less from the same crowd. 


---

Questions:
* 

</details>








<details><summary><b>10/21/22</b></summary>

Updates to `data_processing.Rmd`:
* Reordered commands for relabelling the `GENDER` column (fixed an error where NAs would
be labelled as "Other" instead of "Missing")
* Fixed filtering by `TCC` (I used the wrong inequality before haha)

---

Updates to `data_analysis.Rmd`
* 

---

Notes:
* 

---

Questions:
* 

</details>






<details><summary><b>10/24/22</b></summary>

Updates to `data_processing.Rmd`:
* Fixed filter for removing data data pts below a minimum wage salary

---

Updates to `data_analysis.Rmd`
* Added summary statistics code for TCC, Education experience, and job experience

---

Notes:
* 

---

Questions:
* 

</details>














<details><summary><b>10/25/22</b></summary>

Updates to `data_processing.Rmd`:
* 

---

Updates to `data_analysis.Rmd`
* Added summary statistics code for age and salary history question
* Added summary stats for "Other" gender category

---

Notes:
* 

---

Questions:
* 

</details>











<details><summary><b>10/29/2022</b></summary>

Updates to `data_processing.Rmd`:
* 

---

Updates to `data_analysis.Rmd`
* Created summary statistics code for highest level of educational attainment by gender
    * created a new logical column that parses out the highest level of edu from other cols
* Created summary stats for the number of employees in company by gender

---

Notes:
* 

---

Questions:
* How should we code in the SHB variable? Should we have it set to after the year in which the ban take effect? Right after? (My intuitions would say that we should wait some time, as the salary and information they are reporting are likely from jobs they got before the ban in the immediate post-period)

</details>
















<details><summary><b>10/31/2022</b></summary>

Updates to `data_processing.Rmd`:
* 

---

Updates to `data_analysis.Rmd`
* Added code to look at the highest proportion industries across genders
* Added code to compare missing data for TCC, Age, years of experience, work hours, and industry spread

---

Notes:
* The "other" gender category has the exact same top jobs as women, and their education seems to be more similar to women as well
* Our missing data seems to have 

---

Questions:
* 

</details>



















<details><summary><b>11/06/2022</b></summary>

Updates to `data_processing.Rmd`:
* Added code to create a SHB column
	* this column is a 1 if the response was sent at least 6 months after an SHB was implemented in the respondents' state, and 0 otherwise

---

Updates to `data_analysis.Rmd`
* 

---

Notes:
* 

---

Questions:
* 

</details>













<details><summary><b>11/11/2022</b></summary>

Updates to `data_processing.Rmd`:
* 


---

Updates to `data_analysis.Rmd`
* added notes and sample equations in latex to formulate a preliminary regression
* added code for reporting summary statistics for data that had a filled-in salary disclosure question vs missing

---

Notes:
* At this point, just account for gender, TCC, SHB, education level, we have ~230000 complete cases
* A clarifying comment: how much the wage gap changes due to disclosure itself will account for the presence of statistical discrimination (i.e. hiring managers expecting women to perform worse/have a lower marginal benefit)
* instrumental variable will help account for statistical, leaving the actual difference due to taste-based
---

Questions:
* 

</details>














<details><summary><b>11/13/2022</b></summary>

Updates to `data_processing.Rmd`:
* Added code to create `highest`, the column for highest level of educational attainment
* created code for a KNN model to predict `gender`



---

Updates to `data_analysis.Rmd`
* 

---

Notes:
* At this point, just account for gender, TCC, SHB, education level, we have ~230000 complete cases
* A clarifying comment: how much the wage gap changes due to disclosure itself will account for the presence of statistical discrimination (i.e. hiring managers expecting women to perform worse/have a lower marginal benefit)
* instrumental variable will help account for statistical, leaving the actual difference due to taste-based
* The KNN model will need a smaller sample than what I have now, since it takes way to long to run
* We can't use logistic regression for gender because nonbinary
---

Questions:
* 

</details>














<details><summary><b>Update template</b></summary>

Updates to `data_processing.Rmd`:
* 

---

Updates to `data_analysis.Rmd`
* 

---

Notes:
* 

---

Questions:
* 

</details>


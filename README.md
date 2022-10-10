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


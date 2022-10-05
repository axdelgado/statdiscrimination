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

<details><summary><b>10/3/2022</b></summary>

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

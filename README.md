# Statistical Discrimination Code - Alvin

## Details

Here lives the data analysis codebase for Alvin Delgado's work for "Statistical Discrimination in the Pay-setting Process", a project led by Professor Laura Tobin of the Yale School of Management.

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

* Updates:
    * Transormed date text field to date field with `lubridate`
    * Reorganized how data is loaded, reshaped, and saved
    * Moved some functions from the processing document to the analysis document

</details>

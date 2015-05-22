---
title: "README.md"

date: "May 22, 2015"
output: html_document
---

### Goal
* Project involves running a script to aggregate separate data files and transform this data set into 
  "tidy data". 

* Tidy data will include mean and standard deviation of the observed measurements.

### Files

1. run_analysis.R - single script to read all files into data frame, convert/transform data set, and
   compute descriptive statistics for measured values.
2. README.txt     - describes the content of the project and method of the run_analysis.R script.

3. CodeBook.md    - description of variables
   calculations.

### Method
Run_analysis.R script performs the data concatenation, transformation and computational summary by the following steps.

1. Set Directory to Project Directory
2. Read in Files and process data.

Very simply do the following from either 

a. Command line
```bash
R CMD BATCH run_analysis.R
```


b. Or within R

```R
source("run_analysis.R")

```


### Brief description


1. Determines if the data has been downloaded, and if not it downloads and unzips it

2. Determine the labels for the data elements we will be reading  from the files features.txt  , features_info.txt and activity_labels.txt

3. for test and train, performs a load of the data 

4. Merge the tables

5. Perform a smart reduction based on Activity and Subject 

6.
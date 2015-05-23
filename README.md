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


Note that the steps are covered in the source code, but the following is the 
overview

1. Read the features File to get the list of names for the variables we want to use

2. Only find the feature names that have "std" OR "mean" in them using a grep

3. Save the index for the original features that have "mean" or "std" in the name

4. Read the activitiy labels

5. Use the subroutine load_subdirectory() which does the following

   * Read the file X_(test|train).txt
   * Rename the columns of the data set values with the descriptive names
   * Read the file subject_(test|train).txt
   * Add the subject data as a column to the temporary dataframe
   * Read the file y_(test|train).txt
   * Add the activity data as a column to the temporary dataframe
   * Add a final column of (test|train) just to keep the data sources straight ( useful for debugging )
    
6. Save the dataframe from load_subdirectory(), then rerun it with the other type

7. Combine the two dataframes using rbind()

8. Use the function ddply to reduce the combine dataframe.

9. Write out the table in space separated formatted.



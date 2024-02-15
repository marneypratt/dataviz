# Introduction to Data Visualization

### by Marney Pratt

### Last updated on February 15, 2024

This webpage details how to download the Introduction to Data Visualization set of activities.

It is assumed that you have access to R and Rstudio (installed on your computer or access to an RStudio cloud-based server) and you have access to the **Intro to R for Biology** tutorials.

Note that if you are not part of Smith College and need to install the **Intro to R for Biology** tutorials locally on your computer, you can follow instructions here: [Intro to R for Biology learnr tutorials](https://github.com/marneypratt/r4bio).

## Download this repository from GitHub using the usethis package

This series of instructions will copy all the files you need from here on GitHub to your computer or cloud-based RStudio.

1.  In RStudio, install the usethis package by typing this code into the RStudio console and press Enter:

`install.packages("usethis")`

2.  Once the package is installed, then you need to load usethis. This is similar to opening an app on your phone or computer. To load usethis, type this code into the RStudio console and press Enter:

`library(usethis)`

3.  To download the repository, use this code:

`use_course("https://github.com/marneypratt/dataviz/archive/master.zip")`

4.  When told "Downloading into..." "OK to proceed?" select the number for the option next to "I agree" or similar positive response and note what directory it is putting the zipped file into.

5.  When asked "Shall we delete the ZIP file" select the number for the option that says "Definitely" or similar positive response

A new session of RStudio will open with the unzipped folder containing all the files you need ready for you.

Make sure you have the `tidyverse` and `ggbeeswarm` packages installed before you run through this activity.

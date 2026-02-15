# Introduction to Data Visualization

### by Marney Pratt

### Last updated on February 15, 2026

This webpage details how to download the Introduction to Data Visualization set of activities.

It is assumed that you have access to R and Rstudio (installed on your computer or access to an RStudio cloud-based server) and you have installed the following packages:

- `tidyverse` ## for readr, dplyr, ggplot2
- `ggbeeswarm`  ## for jittering points in a dotplot
- `ggpubr`  ## for making QQ-plots and changing the color palette
- `rstatix` ## for effect sizes
- `patchwork`  ## for joining graphs
- `usethis`  ## for downloading and unzipping this repository

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

Make sure you have all the packages listed above installed before you run through this activity.

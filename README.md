# Introduction to Data Visualization

### by Marney Pratt

### Last updated on September 29, 2020

This webpage details how to download the Introduction to Data Visualization set of activities.

It is assumed that you have access to R and Rstudio (installed on your computer or access to an RStudio cloud-based server) and you have already installed the **Intro to R for Biology** Swirl course.

If you need to install the **Intro to R for Biology** Swirl course, you can follow instructions here: [Intro to R for Biology Swirl Course](https://github.com/marneypratt/Intro_to_R_for_Biology)


## Download this repository from GitHub using the usethis package

This series of instructions will copy all the files you need from here on GitHub to your computer or cloud-based RStudio. 

1. In RStudio, install the usethis package by typing this code into the RStudio console and press Enter:

`install.packages("usethis")`

2. Once the package is installed, then you need to load usethis. This is similar to opening an app on your phone or computer. To load usethis, type this code into the RStudio console and press Enter:

`library(usethis)`

3. To download the repository, use this code:

`use_course("https://github.com/marneypratt/dataviz/archive/master.zip")`

4. When told "Downloading into..." "OK to proceed?" select the number for the option next to "I agree" and note what directory it is putting the zipped file into. (Note that you can move the files later if needed)

5. When asked "Shall we delete the ZIP file" select the number for the option that says "Definitely"

A new session of RStudio will open with the unzipped folder containing all the files you need ready for you.
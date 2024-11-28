# the code below will calculate descriptive statistics for a variable of interest grouped by another variable
# the tidyverse package must be loaded before this will work
# 
# 
# To round other values (mean, median, IQR, etc), round to the same DECIMAL place as the SD rounded to 2 significant figures. Rounding the SD tells us how variable the data are and how many decimals we can report to. Thus, look at what decimal place the SD was rounded to for 2 significant digits.

#We will use the `round` function to round our values. This is what the help file says about the `round` function

"`round` rounds the values in its first argument to the specified number of decimal places (default 0). 
#See ‘Details’ about “round to even” when rounding off a 5.

#Rounding to a negative number of digits means rounding to a power of ten, 
#so for example round(x, digits = -2) rounds to the nearest hundred."

# Use the following for digits in the `round` function
# 
# rounding to the tens place use digits=-1
# rounding to the ones place use digits=0
# rounding to the tenths place use digits=1
# rounding to the hundredths place use digits=2

# replace the blank below with a continuous variable you want to summarize
x.var <- "___" 


# replace the blank with the dataframe name where you removed missing values
___  |>  
  # remove missing values from continuous variables
  filter(!is.na(.data[[x.var]])) |> 
  
  # replace the blank with the categorical variable(s)
  group_by(___) |> 
  
  # calculate the descriptive stats
  # replace the blanks with the number of digits 
  # to the right of the decimal place based on the rounded SD
  # the SD is rounded to 2 significant digits using signif  
  # do not place anything in the empty parentheses in the n() 
  # N represents the sample size within each group
  summarize(Mean = round(mean(.data[[x.var]]), digits=__), 
            SD = signif(sd(.data[[x.var]]), digits=2), 
            Median = round(median(.data[[x.var]]), digits=__),
            IQR = round(IQR(.data[[x.var]]), digits=__), 
            Q1 = round(quantile(.data[[x.var]], .25), digits=__),
            Q3 = round(quantile(.data[[x.var]], .75), digits=__),
            Min = round(min(.data[[x.var]]), digits=__),
            Max = round(max(.data[[x.var]]), digits=__),
            N = n())
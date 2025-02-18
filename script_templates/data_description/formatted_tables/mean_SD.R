# to use this code, the following packages must be loaded
# tidyverse
# flextable

library(flextable) ## for making formatted tables that can be pasted into Word or Google Docs

#see https://davidgohel.github.io/flextable/ for more info & formatting options

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

#set the number of digits to round to based on the rules above
round.digit <- ___

# replace the blank below with a continuous variable you want to summarize
dep.var <- "___" 

#calculate descriptive stats
#replace the blank below with the name of the data frame
df.sum <- ___ |> 
  
  # replace the blank with the categorical variable(s)
  group_by(___) |> 
  
  # remove missing values 
  filter(!is.na(.data[[dep.var]])) |> 
  
  # calculate the descriptive stats
  # do not place anything in the empty parentheses in the n() 
  summarise(Mean = round(mean(.data[[dep.var]]), digits=round.digit), 
            SD = signif(sd(.data[[dep.var]]), digits=2),
            N = n())

#create the formatted table
ft <- flextable(df.sum,
                cwidth = 0.75) |>  #can vary cell width as needed
  
  #bold the headings
  bold(part = "header") |> 
  
  #center columns
  align(align = "center", part = "all" )

#print the table
#right click on the table, choose select all, 
#choose copy, then paste in your document
#finish formatting as needed in your document
ft
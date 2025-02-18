# the code below will calculate descriptive statistics for a variable of interest grouped by another variable
# the tidyverse package must be loaded before this will work

# replace the blank below with a continuous variable you want to summarize
dep.var <- "___" 

# replace the blank below with the name of the data frame
df.sum <- ___  |> 
  
  # remove missing values from continuous variables
  filter(!is.na(.data[[dep.var]])) |> 
  
  # replace the blank with the categorical variable(s)
  group_by(___) |> 
  
  # calculate the descriptive stats
  # do not place anything in the empty parentheses in the n()
  summarize(Sample.size = n(),
            Min = min(.data[[dep.var]]),
            Q1 = quantile(.data[[dep.var]], .25),
            Median = median(.data[[dep.var]]),
            Q3 = quantile(.data[[dep.var]], .75),
            Max = max(.data[[dep.var]]),
            Mean = mean(.data[[dep.var]]),              
            SD = sd(.data[[dep.var]]))

df.sum
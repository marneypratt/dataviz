
# the code below will calculate descriptive statistics for a variable of interest grouped by another variable

___ |>                            #put the name of the data frame here
  filter(!is.na(___)) |>          #put the name of the continuous variable of interest here
  group_by(___) |>                #put the name of the grouping variable (=factor) here
  summarize(mean = mean(___),     #put the name of the continuous variable of interest here
            median = median(___), #put the name of the continuous variable of interest here
            SD = sd(___),         #put the name of the continuous variable of interest here
            IQR = IQR(___),       #put the name of the continuous variable of interest here
            n())                  #don't put anything here, leave as is
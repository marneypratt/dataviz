
# this code will make a boxplot with mean and all points included plus the sample size on the x-axis
# see the "Intro to R for Biology: Graphing Grouped Continuous Data" tutorial for more help
# make sure you have loaded the ggbeeswarm package to use geom_quasirandom()
# alternatively, you can use geom_jitter() instead

# first calculate the sample size
sample_size = ___  |>  #put the data frame name here
  group_by(___) |>  #put the factor variable name here
  summarize (num=n())


#dotplot with box plots and sample sizes
box.dot.plot <- ___ |>   #put the data frame name here
  left_join(sample_size, by="___") |> #put the factor variable name here
  mutate(myaxis = paste0(___, "\n", "n=", num)) |>  #put the factor variable name here
  
  ggplot(aes(x=myaxis, y=___, fill=___)) + #put the y-variable first and then the factor variable for fill
  geom_boxplot(width=0.1, alpha=0.8, outlier.shape= NA) +  #remove the outliers when all the points are included
  geom_quasirandom(                              #adds quasirandom jittered points but colors them by fill
    shape=21, size=1, alpha = 0.5, width=0.25) + #sets the size, shape, and transparency of the points
  ylab("___") + #put formatted label for the axis here (include units as needed)
  xlab("___") + #put formatted label for the axis here (include units as needed)
  coord_cartesian(expand=TRUE) +
  theme_classic(base_size=16)  + #change the number here to change font size
  theme(legend.position="none") #remove this line if you DO want a legend/key

box.dot.plot

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-boxplot/
# https://ggplot2.tidyverse.org/index.html
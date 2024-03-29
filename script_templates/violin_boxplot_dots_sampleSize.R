
# this code will make a violin plot with box plots inside and sample size on the x-axis
# see the "Intro to R for Biology: Graphing Grouped Continuous Data" tutorial for more help


# first calculate the sample size
sample_size = ___ |>  #put the data frame name here
  group_by(___) |>    #put the factor variable name here
  summarize (num=n()) #don't change anything here


#violin plot with box plots and sample sizes
___ |>   #put the data frame name here
  left_join(sample_size, by="___") |> #put the factor variable name here
  mutate(myaxis = paste0(___, "\n", "n=", num)) |>  #put the factor variable name here
  
  ggplot(aes(x=myaxis, y=___, fill=___)) + #put the y-variable first and then the factor for fill
  geom_violin(width=1, alpha=0.5) +
  geom_quasirandom(                              #adds quasirandom jittered points but colors them by fill
    shape=21, size=1, alpha = 0.5, width=0.4) + #sets the size, shape, and transparency of the points
  geom_boxplot(width=0.1, color="black", alpha=0.8, outlier.shape= NA) +
  ylab("___") + #put formatted label for the axis here (include units as needed)
  xlab("___") + #put formatted label for the axis here (include units as needed)
  theme_classic(base_size=16) +
  theme(legend.position="none")

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-violin-plot/
# http://www.sthda.com/english/wiki/ggplot2-violin-plot-quick-start-guide-r-software-and-data-visualization
# https://ggplot2.tidyverse.org/index.html
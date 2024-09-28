# this code will make a histogram using ggplot from the ggplot2 package
# factor = a categorical variable that you want to compare
# play with the binwidth to give you enough but not too many bins 
# (something similar to the SD can be a good starting place for the binwidth)

ggplot(
  data = ___, #put the data frame name here 
  aes(x = ___, fill=___)) + #continuous variable = x, factor = fill
  geom_histogram(binwidth = __, #change the binwidth as needed
                 color = "white", show.legend = FALSE) + 
  facet_grid(___ ~ .) + #put the factor here
  xlab("___") + #put formatted label for the axis here (include units as needed)
  ylab("Count") +
  theme_classic(base_size=18) 

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-histogram/
# https://ggplot2.tidyverse.org/index.html
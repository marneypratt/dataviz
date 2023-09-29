
# this code will make a histogram


ggplot(
  data = ___, #put the data frame name here 
  aes(x = ___, fill=___)) + #continuous variable = x, factor = fill
  geom_histogram(binwidth = 0.1, color = "white", show.legend = FALSE) + #change the binwidth as needed
  facet_grid(___ ~ .) + #put the factor here
  xlab("___") + #put formatted label for the axis here (include units as needed)
  ylab("Count") +
  theme_classic(base_size=18) 

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-histogram/
# https://ggplot2.tidyverse.org/index.html
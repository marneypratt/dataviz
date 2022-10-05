
# this code will make a basic boxplot


ggplot(
  data = ___, #put the data frame name here 
  aes(x= ___, y = ___)) + #factor = x, continuous variable = y,
  geom_boxplot() +
  ylab("___") + #put formatted label for the axis here (include units as needed)
  xlab("___") + #put formatted label for the axis here (include units as needed)
  theme_classic(base_size=18) 

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-boxplot/
# https://ggplot2.tidyverse.org/index.html
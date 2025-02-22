
# this code will make a basic boxplot


box.plot <- ggplot(
  data = ___, #put the data frame name here 
  aes(x = ___, y = ___, fill = ___)) + #factor = x and fill, continuous variable = y
  geom_boxplot(width=0.1, color="black", alpha=0.8) +
  ylab("___") + #put formatted label for the axis here (include units as needed)
  xlab("___") + #put formatted label for the axis here (include units as needed)
  theme_classic(base_size=18) +
  theme(legend.position="none") # remove this line if you DO want a legend/key

box.plot

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-boxplot/
# https://ggplot2.tidyverse.org/index.html
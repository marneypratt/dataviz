
# this code will make a violin plot with boxplots inside


mixed.plot <- ggplot(
  data = ___, #put the data frame name here 
  aes(x = ___, y = ___, fill=___)) + #factor = x & fill, continuous variable = y, 
  geom_violin(width=1, alpha=0.25) + 
  geom_boxplot(width=0.1, color="black", alpha=0.8) +
  ylab("___") + #put formatted label for the axis here (include units as needed)
  xlab("___") + #put formatted label for the axis here (include units as needed)
  theme_classic(base_size=18) +
  theme(legend.position="none") # remove this line if you DO want a legend/key

mixed.plot

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-violin-plot/
# http://www.sthda.com/english/wiki/ggplot2-violin-plot-quick-start-guide-r-software-and-data-visualization
# https://ggplot2.tidyverse.org/index.html
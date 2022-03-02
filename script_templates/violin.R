
# this code will make a basic violin plot


ggplot(
  data = ___, 
  aes(x = ___, y = ___, fill = ___)) + 
  geom_violin(width=1.4) +
  ylab("___") +
  xlab("___") +
  theme_classic(base_size=18) +
  theme(legend.position="none") # remove this line if you DO want a legend/key

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-violin-plot/
# http://www.sthda.com/english/wiki/ggplot2-violin-plot-quick-start-guide-r-software-and-data-visualization
# https://ggplot2.tidyverse.org/index.html
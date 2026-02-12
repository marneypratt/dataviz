
# this code will make a basic violin plot with median added 
# if the mean is more appropriate for a measure of central tendency
# then replace the median with the mean in the stat_summary() function


violin.plot <- ggplot(
  data = ___, #put the data frame name here 
  aes(x = ___, y = ___, fill=___)) + #factor = x & fill, continuous variable = y,
  geom_violin(width=1, alpha=0.8) +
  stat_summary(
    fun = median, fun.min = median, fun.max = median, #change median to mean if desired
    geom = "crossbar", na.rm = TRUE,
    width = 0.3, linewidth = 0.75, color = "black") +
  ylab("___") + #put formatted label for the axis here (include units as needed)
  xlab("___") + #put formatted label for the axis here (include units as needed)
  theme_classic(base_size=18) +
  theme(legend.position="none") # remove this line if you DO want a legend/key

violin.plot

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-violin-plot/
# http://www.sthda.com/english/wiki/ggplot2-violin-plot-quick-start-guide-r-software-and-data-visualization
# https://ggplot2.tidyverse.org/index.html
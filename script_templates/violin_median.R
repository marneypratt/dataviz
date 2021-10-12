
# this code will make a basic violin plot with median added 
# if the mean is more appropriate for a measure of central tendency
# then replace the median with the mean in the stat_summary() function


ggplot(
  data = ___, 
  aes(x = ___, y = ___, fill = ___)) + 
  geom_violin() +
  stat_summary(
    fun = median, fun.min = median, fun.max = median, #change median to mean if desired
    geom = "crossbar", na.rm = TRUE,
    width = 0.4, size = 0.75, color = "black") +
  ylab("___") +
  xlab("___") +
  theme_classic(base_size=18) +
  theme(legend.position="none") # remove this line if you DO want a legend/key

#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-violin-plot/
# https://ggplot2.tidyverse.org/index.html
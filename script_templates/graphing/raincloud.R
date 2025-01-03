
#this is a fancier type of graph that requires some additional packages to be installed (these are not current installed on the Smith RStudio Server)

library(ggdist)
library(gghalves)

rain.plot <- ggplot(
  data = ___, #put the data frame name here
  aes(x=___, y=____,  fill = ___)) + #factor = x & fill, continuous variable = y, 
  ggdist::stat_halfeye(
    adjust = .5, width = .5, .width = 0, justification = -.14, point_colour = NA) + 
  geom_boxplot(width = .08, outlier.shape = NA, size = 0.4) +
  gghalves::geom_half_point(
    side = "l", size = 2, range_scale = .65, alpha = .5, 
    width = .8, shape = 21, color = "gray", stroke = 0.3) +
  ylab("___") + #put formatted label for the axis here (include units as needed)
  xlab("___") + #put formatted label for the axis here (include units as needed)
  theme_classic(base_size=16)  +
  theme(legend.position="none") + #remove this if you want a legend to show
  coord_flip()

rain.plot

# see https://www.cedricscherer.com/2021/06/06/visualizing-distributions-with-raincloud-plots-and-how-to-create-them-with-ggplot2/

#this is a fancier type of graph that requires some additional packages to be installed (these are not current installed on the Smith RStudio Server)

library(ggdist)
library(gghalves)

ggplot(___, #put the dataframe name here
      aes(x=___, y=____,  fill = ___)) + #use same grouping variable for x and fill
  ggdist::stat_halfeye(
    adjust = .5, width = .5, .width = 0, justification = -.14, point_colour = NA) + 
  geom_boxplot(width = .08, outlier.shape = NA, size = 1) +
  gghalves::geom_half_point(
    side = "l", size = 2, range_scale = .65, alpha = .5, 
    width = .8, shape = 21, color = "white", stroke = 1.3) +
  ylab("___") +
  xlab("___") +
  scale_y_continuous(limits = c(__, ___)) + #change these to min and max limit
  theme_classic(base_size=16)  +
  theme(legend.position="none") + #remove this if you want a legend to show
  coord_flip()

# see https://www.cedricscherer.com/2021/06/06/visualizing-distributions-with-raincloud-plots-and-how-to-create-them-with-ggplot2/
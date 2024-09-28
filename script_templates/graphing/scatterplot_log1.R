

# this code will make a scatter plot with each variable log transformed by
# wrapping the x and y variables in the log() function
# since you cannot take the log of zero, add one to a continuous variable if it includes zeros

ggplot(
  data = ___, #put the data frame name here
  aes(x = ___, y = ___, color=___)) + #continuous variables = X & y, factor = color
  geom_point(size = 3, alpha=0.8) +                   #play with the point attributes as needed
  geom_smooth(method = "lm", se = FALSE) + #adds line of best fit
  ylab("log(___)") + #put formatted label for the axis here (include units as needed)
  xlab("log(___)") + #put formatted label for the axis here (include units as needed)
  labs(color = "___") +
  theme_classic(base_size = 18)

#see the resources below for some additional options to make a nice scatter plot 
# https://www.datanovia.com/en/lessons/ggplot-scatter-plot/
# https://ggplot2.tidyverse.org/index.html
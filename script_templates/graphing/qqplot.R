#This code uses ggqqplot from the ggpubr package to make a Q-Q plot 
#This will compare the distribution of data to a normal distribution

qq.plot <- ggpubr::ggqqplot(
  data = ___,    #put the data frame name here 
  "___",         #put the continuous variable name here
  facet.by = "___")  #put the categorical variable here

qq.plot
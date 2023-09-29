
# this code will make a bar graph with means and standard errors



#first calculate the mean, sd, & count the observations in each group
df.sum <- ___ |>      #put the data frame name here
  group_by(___) |>    #put the factor here
  summarise(mean = mean(___), #put the continuous variable here
            sd = sd(___),     #put the continuous variable here
            n = n()) |>       #don't put anything here, leave as is
  
  #calculate the standard error
  mutate(sem = sd/(sqrt(n)))


#make bar graph
ggplot(
  data=df.sum, 
  aes(x=___,y=mean))+    #put the factor here
  geom_bar(stat="identity",  width = 0.5, fill = "steelblue")+
  geom_errorbar(aes(ymin=mean-sem, ymax=mean+sem), width=0.1, linewidth=1) +
  ylab("___") + #put formatted label for the axis here (include units as needed)
  xlab("___") + #put formatted label for the axis here (include units as needed)
  coord_cartesian(xlim = c(0.5,2.5), expand=FALSE) +
  theme_classic(base_size=16) +
  theme(legend.position="none")


#see the resources below for some additional options to make a nice plot 
# https://www.datanovia.com/en/lessons/ggplot-barplot/
# https://ggplot2.tidyverse.org/index.html
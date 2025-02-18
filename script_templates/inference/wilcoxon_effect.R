#the code below will calculate the standardized effect size (r) when variances are unequal
#you need the rstatix package loaded for this code to work


#standardized effect size for non-normal data
#2 independent groups
#this is often called the Mann-Whitney U-test
rstatix::wilcox_effsize(
  data = ___,         #put the dataframe name here
  __ ~ __,            #dependent variable ~ factor
  paired = FALSE,
  alternative = "two.sided",
  ci = TRUE,
  conf.level = 0.95,
  ci.type = "bca",
  nboot = 5000)

#With the default settings here
#95% confidence interval is bias-corrected and accelerated
#5000 bootstrap samples taken 

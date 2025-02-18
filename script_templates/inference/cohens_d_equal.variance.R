#the code below will calculate the Cohen's d effect size when variances are equal
#you need the rstatix package loaded for this code to work


#standardized effect size for normal data and equal variance
rstatix::cohens_d(
  data = ___,         #put the dataframe name here
  __ ~ __,            #dependent variable ~ factor
  paired = FALSE,
  var.equal = TRUE,
  hedges.correction = FALSE,
  ci = TRUE,
  conf.level = 0.95,
  ci.type = "bca",
  nboot = 5000)

#With the default settings here
#95% confidence interval is bias-corrected and accelerated
#5000 bootstrap samples taken 
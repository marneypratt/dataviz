#the code below will calculate the Cohen's d effect size when variances are unequal
#you need the rstatix package loaded for this code to work


#standardized effect size for normal data
rstatix::cohens_d(
  data = ___,         #put the dataframe name here
  __ ~ __,            #dependent variable ~ factor
  paired = FALSE,
  var.equal = FALSE,
  hedges.correction = FALSE,
  ci = TRUE,
  conf.level = 0.95,
  ci.type = "perc",
  nboot = 1000)
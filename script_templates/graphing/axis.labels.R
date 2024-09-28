#example formatted axis labels for ggplot graphs
#just copy the line for the variable of interest


ylab("Flow Rate (m/s)") +
  
ylab("Dissolved Oxygen (mg/L)") +
  
ylab(~paste("PAR"," ", "(" ,mu, "mol m"^-2,"s"^-1, ")")) +
  
ylab("pH") +
  
ylab("Water Temperature ("~degree~"C)") +
  
ylab("Turbidity (NTU)") +
  
ylab(~paste("Conductivity"," ", "(" ,mu, "S cm"^-1, ")")) +
  
ylab("Nitrate Concentration (mg/L)") +
  
ylab(expression(Alkalinity~(ppm~of~CaCO[3]))) +
  
ylab(expression(Phosphate~Concentration~(ppm~of~PO[4]^{"3-"}))) +
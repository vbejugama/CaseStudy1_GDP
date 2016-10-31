#########
# Scirpt to Divide Data into 5 Qantiles
# Vivek Bejugama
# October 20, 2016
#########

library(ggplot2)

# Adding a new Column to the dataframe with its corresponding Quantile group divided into 5(20%,40%,60%,80%) groups
sorted_gdp_edu$quartile <- with(sorted_gdp_edu, factor(
  findInterval( sorted_gdp_edu$GDP_2012, c(-Inf,
                       quantile(sorted_gdp_edu$GDP_2012, probs=c(0.2, 0.4, .6, .8)), Inf)), 
  labels=c("Q1","Q2","Q3","Q4","Q5")
))

group20 <- subset(sorted_gdp_edu,quartile == "Q1")   #lowest Quartile
group40 <- subset(sorted_gdp_edu,quartile == "Q2")
group60 <- subset(sorted_gdp_edu,quartile == "Q3")
group80 <- subset(sorted_gdp_edu,quartile == "Q4")
group100 <- subset(sorted_gdp_edu,quartile == "Q5") # Highest Quartile

#Countries in Lower middle income group in Upper quartile
subset(group100,Income_Group == "Lower middle income")



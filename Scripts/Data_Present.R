#########
# Scirpt to Presenting the data
# Vivek Bejugama
# October 20, 2016
#########

#Libraries
library(ggplot2)

#A Plot with coutries GDP for each Income Group, sized according to their Rank.
ggplot(gdp_edu, aes(x=gdp_edu$GDP_2012, y=gdp_edu$Income_Group)) + 
  geom_point(aes(colour=Income_Group, size = Rank)) +
  scale_x_log10(name="Country's GDP (Log Transformed)") +    #since the GDP as right skewed they are log transformed.
  scale_y_discrete(name="Income Group") 


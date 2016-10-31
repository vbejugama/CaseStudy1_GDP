#########
# Scirpt to Analyse the data
# Vivek Bejugama
# October 20, 2016
#########

#No. of ID's matching
count(is.na(gdp_edu$Country.y))   # 1 Country from GDP data is missing in Education Dataset

#Sorting the Clean Data based on GDP in ascending order
sorted_gdp_edu <- gdp_edu[order(gdp_edu$GDP_2012),]
# Sample of sorted data
head(sorted_gdp_edu)

#13th Country in the sorted data frame
sorted_gdp_edu[13,c("Country_Code","Country.x","GDP_2012")]

#Average GDP Ranking of High income: OECD members
mean(gdp_edu[which(gdp_edu$Income_Group == "High income: OECD" & is.na(gdp_edu$Rank) == F ),c("Rank")])

#Average GDP Ranking of High income: nonOECD members
mean(gdp_edu[which(gdp_edu$Income_Group == "High income: nonOECD" & is.na(gdp_edu$Rank) == F ),c("Rank")])


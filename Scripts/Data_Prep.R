###############################
# Preparing Tidy Data and Merging to create a final clean dataset. 
# Vivek Bejugama
# October 20, 2016
###############################

#Libraries
library(plyr)

#Initialize working Directories
setwd(rootDir)
setwd(fileDir)

#Tidy GDP Data
rawGDP <- read.csv("GDP_DATA.csv", header = F, skip = 5, stringsAsFactors = F)  #Importing data and Excluding Header
rawGDP <- rawGDP[1:190,]                    #Excluding tail recrods. 
cln_GDP <- rawGDP[,c("V1","V2","V4","V5")]  #Selecting the Column needed
names(cln_GDP) <- c("Country_Code", "Rank" ,"Country", "GDP_2012") #Assigning the names of column.
cln_GDP$Rank <- as.integer(cln_GDP$Rank)    #Converting the rank to integer
cln_GDP$GDP_2012 <- as.numeric(gsub("[^[:digit:]]","", cln_GDP$GDP_2012)) #removing comas and converting to numeric
#Sample GDP dataset
head(cln_GDP)
tail(cln_GDP)


#Tidy Education Data
rawEDU <- read.csv("EDU_DATA.csv", header = T , stringsAsFactors = F)  
cln_EDU <- rawEDU[,c("CountryCode","Short.Name","Income.Group")]
names(cln_EDU) <- c("Country_Code","Country", "Income_Group")
cln_EDU <- cln_EDU[-1*(which(cln_EDU$Income_Group == "")),]   # removing invalid data
#Sample Education dataset
head(cln_EDU)
tail(cln_EDU)

#Creating Single Final cleann DataFrame by left join with GDP to Education dataset
gdp_edu <- merge(x = cln_GDP, y = cln_EDU, by = "Country_Code", all.x = T ) 
#Sample Education dataset
str(gdp_edu)
head(gdp_edu)
tail(gdp_edu)


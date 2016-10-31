# Main Script

#Initializing the Project Dir.
rootDir <- "C:/Users/vivek/Documents/R/R_Projects/CaseStudy1_GDP"
fileDir <- "./Data_Files"
scriptDir <- "./Scripts"

setwd(rootDir)
setwd(fileDir)

gdp_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
edu_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"



download.file(gdp_URL, destfile = "./GDP_DATA.csv")
download.file(edu_URL, destfile = "./EDU_DATA.csv")

gdp <- read.csv("GDP_DATA.csv", header = T)
edu <- read.csv("EDU_DATA.csv", header = T)

str(gdp)
str(edu)
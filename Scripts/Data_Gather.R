###############################
# Script for Downloading Raw Data Files
# Vivek Bejugama
# October 20, 2016
###############################

#Libraries
library(downloader)

#Initializing the Project Directories
rootDir <- "C://Users//vivek//Documents//R//R_Projects//CaseStudy1_GDP"
fileDir <- ".//Data_Files"
scriptDir <- ".//Scripts"

setwd(rootDir)

# File URLs
gdp_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv"
edu_URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"

# Download Files
setwd(fileDir)
download.file(gdp_URL, destfile = ".//GDP_DATA.csv")
download.file(edu_URL, destfile = ".//EDU_DATA.csv")



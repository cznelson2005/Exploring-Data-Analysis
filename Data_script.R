setwd("D:/R/Plotting")
library(lubridate)

###read whole data set
electric<-read.table("household_power_consumption.txt",sep = ";", dec = ".", na.strings = "?", header = TRUE)

###cast Date column to date format
electric$Date<-as.Date(electric$Date, "%d/%m/%Y")

###Take only 2007/02/01~02 data set
electric<-electric[electric$Date>="2007/02/01" & electric$Date<="2007/02/02",]

###Create Date.Time column
electric[, "Date.Time"]<-ymd(electric$Date)+hms(electric$Time)
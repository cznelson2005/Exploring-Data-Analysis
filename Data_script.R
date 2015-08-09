#setwd("")
library(lubridate)

electric<-read.table("household_power_consumption.txt",sep = ";", dec = ".", na.strings = "?", header = TRUE)
electric$Date<-as.Date(electric$Date, "%d/%m/%Y")
electric<-electric[electric$Date>="2007/02/01" & electric$Date<="2007/02/02",]
electric[, "Date.Time"]<-ymd(electric$Date)+hms(electric$Time)
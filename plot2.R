source("Data_script.R")

library(datasets)

png("plot2.png", width = 480, height = 480)
plot(electric$Date.Time, electric$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab="")
dev.off()
source("Data_script.R")

library(datasets)

png("plot4.png", width = 480, height = 480)
par(mfcol=c(2,2))
with(electric, {
    plot(electric$Date.Time, electric$Global_active_power, type = "l", ylab = "Global Active Power", xlab="")
    label<-c("Sub_metering_1", "Sub_metering_2","Sub_metering_3")
    lncol<-c('black','red','blue')
    plot(electric$Date.Time, electric$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="")
    lines(electric$Date.Time, electric$Sub_metering_2, type="l", col="red")
    lines(electric$Date.Time, electric$Sub_metering_3, type="l", col="blue")
    legend("topright", legend = label,col=lncol, lty='solid')
    plot(electric$Date.Time, electric$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
    plot(electric$Date.Time, electric$Global_reactive_power, type="l", ylab = "Global_reactive_power", xlab="datetime")
})
dev.off()
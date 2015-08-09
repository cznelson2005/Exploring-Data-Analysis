source("Data_script.R")

library(datasets)

png("plot3.png", width = 480, height = 480)
label<-c("Sub_metering_1", "Sub_metering_2","Sub_metering_3")
lncol<-c('black','red','blue')
plot(electric$Date.Time, electric$Sub_metering_1, type="l", ylab = "Energy sub metering", xlab="")
lines(electric$Date.Time, electric$Sub_metering_2, type="l", col="red")
lines(electric$Date.Time, electric$Sub_metering_3, type="l", col="blue")
legend("topright", legend = label,col=lncol, lty='solid')
dev.off()
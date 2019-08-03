# Third plot 
png("plot3.png", width = 480, height= 480)
with(subset, plot(DateTime, Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering"))
with(subset, lines(DateTime, Sub_metering_2, type = "l", col = "red"))
with(subset, lines(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", legend, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))
dev.off()
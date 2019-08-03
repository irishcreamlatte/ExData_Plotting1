# Fourth Plot 
png("plot4.png", width = 480, height= 480)
par(mfrow = c(2,2))
## Plot 1
with(subset, plot(DateTime, Global_active_power, type = "l", xlab = " ", ylab = "Global Active Power"))
## Plot 2
with(subset, plot(DateTime, Voltage, type = "l", xlab = "datetime", ylab = "Voltage"))
## Plot 3
with(subset, plot(DateTime, Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering"))
with(subset, lines(DateTime, Sub_metering_2, type = "l", col = "red"))
with(subset, lines(DateTime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", legend, c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"), bty = "n")
## Plot 4
with(subset, plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power"))
dev.off()

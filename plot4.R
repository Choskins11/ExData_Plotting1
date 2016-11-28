readin <- read.table("C:/users/Christina/Documents/coursera/household_power_consumption.txt", header = TRUE,
                     stringsAsFactors = FALSE, sep = ";", nrows = 69517, na.string = "?")
data <- readin[readin$Date %in% c("1/2/2007", "2/2/2007"), ]

#code to set date and time
dayset <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

#code to create graph
par(mfrow = c(2,2))
plot(dayset, data$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
plot(dayset, data$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
plot(dayset, data$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering")
points(dayset, data$Sub_metering_2, type = "l", col = "red")
points(dayset, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", lty = 1,
       col = c("black", "red", "blue"))
plot(dayset, data$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")

#code to print plot to png
png(filename = "plot4.png", height = 480, width = 480)
par(mfrow = c(2,2))
plot(dayset, data$Global_active_power, type = "l", ylab = "Global Active Power", xlab = "")
plot(dayset, data$Voltage, xlab = "datetime", ylab = "Voltage", type = "l")
plot(dayset, data$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering")
points(dayset, data$Sub_metering_2, type = "l", col = "red")
points(dayset, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty = "n", lty = 1,
       col = c("black", "red", "blue"))
plot(dayset, data$Global_reactive_power, xlab = "datetime", ylab = "Global_reactive_power", type = "l")
dev.off()

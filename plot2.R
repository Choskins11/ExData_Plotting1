readin <- read.table("C:/users/Christina/Documents/coursera/household_power_consumption.txt", header = TRUE, stringsAsFactors = 
                       FALSE, sep = ";", nrows = 69517, na.string = "?")
data <- readin[readin$Date %in% c("1/2/2007", "2/2/2007"), ]

#code to set date and time
dayset <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

#code to create graph in R
plot(dayset, data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

#code to print plot to png
png(filename = "plot2.png", height = 480, width = 480)
plot(dayset, data$Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()

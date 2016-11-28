readin <- read.table("C:/users/Christina/Documents/coursera/household_power_consumption.txt", header = TRUE, stringsAsFactors = 
                       FALSE, sep = ";", nrows = 69517, na.string = "?")
data <- readin[readin$Date %in% c("1/2/2007", "2/2/2007"), ]
#code to create plot in R
hist(data$Global_active_power, col = "red", xlab = "Global Actvie Power (kilowatts)", main = "Global Active Power")

#code to print plot to png
png(filename = "plot1.png", height = 480, width = 480)
hist(data$Global_active_power, col = "red", xlab = "Global Actvie Power (kilowatts)", main = "Global Active Power")
dev.off()

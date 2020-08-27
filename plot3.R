## Preparing data
data <- read.csv(unzip("C:/Users/Gabija/Desktop/R_Studies/ExData_Plotting1/exdata_data_household_power_consumption.zip"), sep = ";", stringsAsFactors = F, dec = ".")
subsetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

dateTime <- strptime(paste(subsetData$Date, subsetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
subMeter1 <- as.numeric(subsetData$Sub_metering_1)
subMeter2 <- as.numeric(subsetData$Sub_metering_2)
subMeter3 <- as.numeric(subsetData$Sub_metering_3)

## Plotting
png("plot3.png")
plot(dateTime, subMeter1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dateTime, subMeter2, col = "red")
lines(dateTime, subMeter3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()

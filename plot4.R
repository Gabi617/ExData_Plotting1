## Preparing data
data <- read.csv(unzip("C:/Users/Gabija/Desktop/R_Studies/ExData_Plotting1/exdata_data_household_power_consumption.zip"), sep = ";", stringsAsFactors = F, dec = ".")
subsetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]

dateTime <- strptime(paste(subsetData$Date, subsetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subsetData$Global_active_power)
voltage <- as.numeric(subsetData$Voltage)
subMeter1 <- as.numeric(subsetData$Sub_metering_1)
subMeter2 <- as.numeric(subsetData$Sub_metering_2)
subMeter3 <- as.numeric(subsetData$Sub_metering_3)
globalReactivePow <- as.numeric(subsetData$Global_reactive_power)

## Plotting
png("plot4.png")
par(mfrow = c(2,2))
# Top left
plot(dateTime, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power")
# Top right 
plot(dateTime, voltage, type = "l", ylab = "Voltage")
# Bottom left
plot(dateTime, subMeter1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(dateTime, subMeter2, col = "red")
lines(dateTime, subMeter3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1, bty = "n")
# Bottom right
plot(dateTime, globalReactivePow, type = "l",ylim = c(0.0,0.5), ylab = "Global_Reactive_Power")
dev.off()

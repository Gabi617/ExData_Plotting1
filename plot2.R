## Preparing data
data <- read.csv(unzip("C:/Users/Gabija/Desktop/R_Studies/ExData_Plotting1/exdata_data_household_power_consumption.zip"), sep = ";", stringsAsFactors = F, dec = ".")
subsetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
globalActivePower <- as.numeric(subsetData$Global_active_power)
dateTime <- strptime(paste(subsetData$Date, subsetData$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

## Plotting
png("plot2.png")
plot(dateTime, globalActivePower, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
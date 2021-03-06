## Preparing data
data <- read.csv(unzip("C:/Users/Gabija/Desktop/R_Studies/ExData_Plotting1/exdata_data_household_power_consumption.zip"), sep = ";", stringsAsFactors = F, dec = ".")
subsetData <- data[data$Date %in% c("1/2/2007", "2/2/2007"),]
globalActivePower <- as.numeric(subsetData$Global_active_power)

## Plotting
png("plot1.png")
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()

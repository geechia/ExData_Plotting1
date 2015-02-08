## Exploratory Data Analysis
## Course Project 1 Plot 3 - Plot multiple line graphs for sub-metering 1, 2, and 3 for period in Februay 1 and 2 in 2007.

plot3 <- function() {
dates <- c("1/2/2007", "2/2/2007");
dateRange <- as.Date(dates);

rawdata <- read.csv(file="household_power_consumption.txt", sep=";",  colClasses="character");
data <- rawdata[rawdata$Date %in% dates,]
datetime <- paste(data$Date, data$Time);
datetimeC <- strptime(datetime, format="%d/%m/%Y %H:%M:%S");

 png(file="plot3.png", width=480, height=480, units="px" );

plot(datetimeC, as.numeric(data$Sub_metering_1), type="l", xlab="", ylab="Energy sub metering");
lines(datetimeC, as.numeric(data$Sub_metering_2), col="red", type="l");
lines(datetimeC, as.numeric(data$Sub_metering_3), col="blue", type="l");
legend("topright",  lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"));

dev.off();

}

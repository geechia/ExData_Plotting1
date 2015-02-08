## Exploratory Data Analysis
## Course Project 1 Plot 2 - Plot line graph Global active power usage over a day period in Februay 1 and 2 in 2007.

plot2 <- function() {
dates <- c("1/2/2007", "2/2/2007");

rawdata <- read.csv(file="household_power_consumption.txt", sep=";",  colClasses="character");
data <- rawdata[rawdata$Date %in% dates,]
datetime <- paste(data$Date, data$Time);
datetimeC <- strptime(datetime, format="%d/%m/%Y %H:%M:%S");

png(file="plot2.png", width=480, height=480, units="px" );
plot(datetimeC, as.numeric(data$Global_active_power), type="l", xlab=" ", ylab="Global Active Power (kilowatts)");

dev.off();

}

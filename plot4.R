## Exploratory Data Analysis
## Course Project 1 Plot 4 - Plot 4 graphs in one canvas

plot4 <- function() {
dates <- c("1/2/2007", "2/2/2007");
DATA <- read.csv(file="household_power_consumption.txt", sep=";",  colClasses="character");
data <- DATA[DATA$Date %in% dates,]
datetime <- paste(data$Date, data$Time);
datetimeC <- strptime(datetime, format="%d/%m/%Y %H:%M:%S");

png(file="plot4.png", width=480, height=480, units="px" );

## set 2 by 2 graphs in a canvas
par(mfrow=c(2,2));
par(mar=c(2,2,1,1))
## plot 1
plot(datetimeC, as.numeric(data$Global_active_power), type="l", ylab="Global Active Power (kilowatts)");

## plot 2
plot(datetimeC, as.numeric(data$Global_active_power), type="l", ylab="Voltage", xlab="datetime");

## plot 3
plot(datetimeC, as.numeric(data$Sub_metering_1), type="l", ylab="Energy sub metering");
lines(datetimeC, as.numeric(data$Sub_metering_2), col="red", type="l");
lines(datetimeC, as.numeric(data$Sub_metering_3), col="blue", type="l");
legend("topright", lty=1, col=c("black", "red", "blue"),  cex=0.6, legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"));

## plot 4
plot(datetimeC, as.numeric(data$Global_reactive_power), type="l", ylab="Global Reactive Power", xlab="datetime");

dev.off();

}

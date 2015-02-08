## Exploratory Data Analysis
## Course Project 1  Plot 1 - Plot Histogram

plot1 <- function() {

dates <- c("1/2/2007", "2/2/2007");

rawdata <- read.csv(file="household_power_consumption.txt", sep=";",  colClasses="character");
data <- rawdata[rawdata$Date %in% dates,]

png(file="plot1.png", width=480, height=480, units="px" );
hist(as.numeric(data$Global_active_power),  col=c("red"), main="Global Active Power", xlab="Global Active Power (kilowatts)");

dev.off();
}

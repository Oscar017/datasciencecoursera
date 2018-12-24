

complete_data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F)

data_plot1 <- subset(complete_data, Date %in% c("1/2/2007","2/2/2007"))

data_plot1$Date <- as.Date(data_plot1$Date, format="%d/%m/%Y")

hist(data_plot1$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png, file="plot1.png", height=480, width=480)

dev.off()




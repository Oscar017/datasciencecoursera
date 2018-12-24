
complete_data <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

data_plot1 <- subset(complete_data, Date %in% c("1/2/2007","2/2/2007"))


data_plot1$Date <- as.Date(data_plot1$Date, format="%d/%m/%Y")

datetime <- paste(as.Date(data_plot1$Date), data_plot1$Time)
data_plot1$Datetime <- as.POSIXct(datetime)


with(data_plot1, {plot(Global_active_power~Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")})


dev.copy(png, file="plot2.png", height=480, width=480)

dev.off()


#reading data
data<- read.table("household_power_consumption.txt",header = TRUE, sep = ";")
d1<- subset(data,(as.character(as.Date(data$Date,"%d/%m/%Y"))== "2007-02-01") | (as.character(as.Date(data$Date,"%d/%m/%Y"))== "2007-02-02")   )
#third plot
png("plot3.png", width = 480, height =480, units = "px")
plot(strptime(paste(d1$Date,d1$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(d1$Sub_metering_1), type = "n", ylab ='Energy sub metering', xlab= '')
lines(strptime(paste(d1$Date,d1$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(d1$Sub_metering_1))
lines(strptime(paste(d1$Date,d1$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(d1$Sub_metering_2),col = "red")
lines(strptime(paste(d1$Date,d1$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(d1$Sub_metering_3),col = "blue")
legend("topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = c(1,1,1), col = c("black","blue","red"))
dev.off()
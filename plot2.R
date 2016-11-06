#reading data
data<- read.table("household_power_consumption.txt",header = TRUE, sep = ";")
d1<- subset(data,(as.character(as.Date(data$Date,"%d/%m/%Y"))== "2007-02-01") | (as.character(as.Date(data$Date,"%d/%m/%Y"))== "2007-02-02")   )
#second plot
png("plot2.png", width = 480, height =480, units = "px")
plot( strptime(paste(d1$Date,d1$Time),"%d/%m/%Y %H:%M:%S"),as.numeric(d1$Global_active_power),type = "l",xlab  = '', ylab = 'Global Active Power(Kilowatts)')
dev.off()
#reading data
data<- read.table("household_power_consumption.txt",header = TRUE, sep = ";")
d1<- subset(data,(as.character(as.Date(data$Date,"%d/%m/%Y"))== "2007-02-01") | (as.character(as.Date(data$Date,"%d/%m/%Y"))== "2007-02-02")   )
#first plot
png("plot1.png", width = 480, height =480, units = "px")
hist(as.numeric(d1$Global_active_power),main = "Global Active Power", xlab= "Global Active Power(Kilowatts)", col ="red")
dev.off()
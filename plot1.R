
# Load Data
dat2<-ReadPowerDat()

# Make Plot 1
png(file="plot1.png")
hist(dat2$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()


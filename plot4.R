
# Load Data
dat2<-ReadPowerDat()

# Plot 4
png(file="plot4.png")
par(mfrow=c(2,2))

plot(dat2$dt,dat2$Global_active_power,ylab="Global Active Power",type="n",xlab="")
lines(dat2$dt,dat2$Global_active_power)

plot(dat2$dt,dat2$Voltage,ylab="Voltage",type="n",xlab="datetime")
lines(dat2$dt,dat2$Voltage)

plot(dat2$dt,dat2$Sub_metering_1,type='n',ylab="Energy sub metering",xlab="")
lines(dat2$dt,dat2$Sub_metering_1,col="black")
lines(dat2$dt,dat2$Sub_metering_2,col="red")
lines(dat2$dt,dat2$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))

plot(dat2$dt,dat2$Global_reactive_power,ylab="Global_reactive_power",type="n",xlab="datetime")
lines(dat2$dt,dat2$Global_reactive_power)
dev.off()
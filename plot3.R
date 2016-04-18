
# Load Data
dat2<-ReadPowerDat()

# Plot 3
png(file="plot3.png")
plot(dat2$dt,dat2$Sub_metering_1,type='n',ylab="Energy sub metering",xlab="")
lines(dat2$dt,dat2$Sub_metering_1,col="black")
lines(dat2$dt,dat2$Sub_metering_2,col="red")
lines(dat2$dt,dat2$Sub_metering_3,col="blue")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1,1))
dev.off()
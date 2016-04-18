
# Load Data
dat2<-ReadPowerDat()

# Plot 2
png(file="plot2.png")
plot(dat2$dt,dat2$Global_active_power,ylab="Global Active Power",type="n",xlab="")
lines(dat2$dt,dat2$Global_active_power)
dev.off()
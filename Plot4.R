### Plot 4
source("readdata.R")

png("Plot4.png", width =480, height = 480)

par(mfcol=c(2,2))

plot(data$Timestamp, as.numeric(as.character(data$Global_active_power)),type='l',ylab="Global Active Power", xlab="")

plot(data$Timestamp, as.numeric(as.character(data$Sub_metering_1)),type='l', xlab="",ylab ="Energy sub metering")
lines(data$Timestamp, as.numeric(as.character(data$Sub_metering_2)),type='l', col='red')
lines(data$Timestamp, data$Sub_metering_3,type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1),col=c("black","red","blue"))

plot(data$Timestamp, as.numeric(as.character(data$Voltage)),type='l', 
     ylab="Voltage",xlab="datetime" )

plot(data$Timestamp, as.numeric(as.character(data$Global_reactive_power)),type='l', 
     ylab="Global_reactive_power",xlab="datetime" )
dev.off()


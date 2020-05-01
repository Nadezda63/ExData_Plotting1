### Plot 3
source("readdata.R")

png("Plot3.png", width =400, height = 400)

plot(data$Timestamp, as.numeric(as.character(data$Sub_metering_1)),type='l', 
     ylab ="Energy sub metering", xlab="")
lines(data$Timestamp, as.numeric(as.character(data$Sub_metering_2)),type='l', col='red')
lines(data$Timestamp, data$Sub_metering_3,type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1)
       ,col=c("black","red","blue"))
dev.off()

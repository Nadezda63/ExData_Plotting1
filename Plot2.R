### Plot 2
source("readdata.R")

png("Plot2.png", width =480, height = 480)
plot(data$Timestamp, as.numeric(as.character(data$Global_active_power)),
     type='l',ylab="Global Active Power (Kilowatts)", xlab="")
dev.off()

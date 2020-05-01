### Plot 1
source("readdata.R")

png("Plot1.png", width =400, height = 400)
hist(as.numeric(as.character(data$Global_active_power)), 
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)", col="red")
dev.off()

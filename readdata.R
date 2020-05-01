### Data Science Coursera
### week 1 Exploratory Data


# Download Data

if(!file.exists('data.zip')){
        url<-"http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
        download.file(url,destfile = "data.zip") }
unzip("data.zip") 
PowerData<-read.table("household_power_consumption.txt",header = TRUE, sep= ";")
PowerData$Timestamp = paste(PowerData$Date, PowerData$Time)
PowerData$Timestamp = strptime(PowerData$Timestamp, "%d/%m/%Y %H:%M:%S")
head(PowerData$Timestamp)

begin<-which(PowerData$Timestamp==strptime("2007-02-01", "%Y-%m-%d"))
end<-which(PowerData$Timestamp==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))
data<-PowerData[begin:end,]

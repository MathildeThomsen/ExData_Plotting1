#Coursework Week 1 - Explorative Data Analysis - Plot 3

##Loading the data
#Full data: 
fulldata <- read.csv("U:/R/Explorative Data Analysis/Course Work/Week 1/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", na.strings=c("?"))

#Subsetting:(Subsetting, so that we only get data from the dates 2007-02-01 to 2007-02-02)
data<-subset(fulldata, Date == "1/2/2007" | Date == "2/2/2007")

data1<-strptime(paste(data$Date, data$Time, sep=""), "%d/%m/%Y %H:%M:%S")

#Plot3:
plot(data1, data$Sub_metering_1,
     ylab="Energy sub metering",
     xlab="",
     type="l") ##beware that days are depicted in Danish
lines(data1, data$Sub_metering_2,
      type="l",
      col="red")
lines(data1, data$Sub_metering_3, 
      type="l", 
      col="blue")
legend("topright", lty=1, col = c("black", "red", "blue"), 
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3" ))
dev.copy(png,'plot3.png', width = 480, height= 480)
dev.off()

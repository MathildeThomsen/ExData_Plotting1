#Coursework Week 1 - Explorative Data Analysis - Plot 2

##Loading the data
#Full data: 
fulldata <- read.csv("U:/R/Explorative Data Analysis/Course Work/Week 1/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", na.strings=c("?"))

#Subsetting:(Subsetting, so that we only get data from the dates 2007-02-01 to 2007-02-02)
data<-subset(fulldata, Date == "1/2/2007" | Date == "2/2/2007")

data1<-strptime(paste(data$Date, data$Time, sep=""), "%d/%m/%Y %H:%M:%S")

#Plot2:
plot(data1, data$Global_active_power,
     ylab="Global Acrive Power (kilowatts)",
     xlab="",
     type="l") ##beware that days are depicted in Danish
dev.copy(png,'plot2.png', width = 480, height= 480)
dev.off()


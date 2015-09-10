#Coursework Week 1 - Explorative Data Analysis - Plot 1

##Loading the data
#Full data: 
fulldata <- read.csv("U:/R/Explorative Data Analysis/Course Work/Week 1/exdata_data_household_power_consumption/household_power_consumption.txt", sep=";", na.strings=c("?"))

#Subsetting:(Subsetting, so that we only get data from the dates 2007-02-01 to 2007-02-02)
data<-subset(fulldata, Date == "1/2/2007" | Date == "2/2/2007")

#Plot1:
with(data, hist(Global_active_power, 
                col = "red", 
                main="Global Active Power", 
                xlab="Global Active Power (kilowatts)",
                ylim=c(0,1300)
))

dev.copy(png,'plot1.png', width = 480, height= 480)
dev.off()

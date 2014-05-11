require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "./household_power_consumption.txt"
myData <- read.csv2.sql(myFile,mySql,filter = NULL)

png(file="plot1.png", width=480, height=480)
hist(myData[,3], col="red", xlab="Global Active Power (Kilowatts)", main="Global Active Power")
dev.off()

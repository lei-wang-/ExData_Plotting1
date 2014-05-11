require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "./household_power_consumption.txt"
myData <- read.csv2.sql(myFile,mySql,filter = NULL)

png(file="plot2.png", width=480, height=480)
tempx <- paste(myData[,1], myData[,2])
x <- strptime(tempx, "%d/%m/%Y %H:%M:%S")
plot(x, myData[,3], type='l', xlab="", ylab="Global Active Power (Kilowatts)")
dev.off()
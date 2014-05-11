require("sqldf")
mySql <- "SELECT * from file WHERE Date = '1/2/2007' OR Date = '2/2/2007'"
myFile <- "./household_power_consumption.txt"
myData <- read.csv2.sql(myFile,mySql,filter = NULL)

png(file="plot3.png", width=480, height=480)
tempx <- paste(myData[,1], myData[,2])
x <- strptime(tempx, "%d/%m/%Y %H:%M:%S")
plot(x, myData[,7], type='l', xlab="", ylab="Global Active Power (Kilowatts)")
lines(x, myData[,8], type='l', col="red")
lines(x, myData[,9], type='l', col="blue")
legend("topright", pch="-", col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

dt <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                      nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
d1 <- subset(dt, Date %in% c("1/2/2007","2/2/2007"))
d1$date <- as.Date(d1$date, format="%d/%m/%Y")
hist(d1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
png("plot1.png", width=480, height=480)
dev.off()
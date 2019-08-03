# Set-up directory and download file 
if(!file.exists("./Project")){dir.create("./Project")}
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileURL, destfile = "./Project/power.zip", method = "curl")
unzip("./Project/power.zip", exdir = "./power")
list.files("./power")

## Read the file and organize the data set 
Data <- read.table("./power/household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".", na.strings = "?")
Data$Date <- as.Date(Data$Date, "%d/%m/%Y")
DateTime <- paste(Data$Date, Data$Time)
DateTime <- as.POSIXlt(DateTime)
Data <- cbind(Data, DateTime)
subset1 <- Data[Data$Date == c("2007-02-01"),]
subset2 <- Data[Data$Date == c("2007-02-02"),]
subset <- rbind(subset1, subset2)
head(subset)
names(subset)

# First plot 
png("plot1.png", width = 480, height = 480)
with(subset, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency"))
dev.off()

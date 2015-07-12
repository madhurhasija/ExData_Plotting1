data <- read.table("household_power_consumption.txt",sep=";", 
                   header=TRUE, na="?")
attach(data)
subset <- Date =="1/2/2007" | Date =="2/2/2007"

d1 <- data[subset,]
attach(d1)
x <- paste(Date,Time)

d1$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

rownames(d1) <- 1:nrow(d1)
attach(d1)

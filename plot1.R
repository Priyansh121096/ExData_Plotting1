source("getData.R")

plot1 = function() {
    data = get_data()
    hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
    dev.copy(png, file = "plot1.png")
    dev.off()
}

plot1()

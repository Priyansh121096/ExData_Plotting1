source("utils.R")

plot1 = function(savetofile = TRUE, setpar = TRUE) {
    data = get_data()
    if (setpar) par(mfcol = c(1, 1))
    hist(data$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
    if (savetofile == TRUE) plot_to_png("plot1.png")
}

plot1()

source("utils.R")

plot3 = function(savetofile = TRUE, setpar = TRUE, bty = 'o') {
    data = get_data()
    data = data[, c("datetime", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")]
    data = melt(data, id.vars = 1)

    if (setpar) par(mfcol = c(1, 1))

    with(data, plot(datetime, value, type = "n", xlab = "", ylab = "Energy sub metering"))
    points(data[data$variable == "Sub_metering_1", ]$datetime,
           data[data$variable == "Sub_metering_1", ]$value,
           type = 'l', col = 'black')
    points(data[data$variable == "Sub_metering_2", ]$datetime,
           data[data$variable == "Sub_metering_2", ]$value,
           type = 'l', col = 'red')
    points(data[data$variable == "Sub_metering_3", ]$datetime,
           data[data$variable == "Sub_metering_3", ]$value,
           type = 'l', col = 'blue')
    legend("topright",
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           col = c("black", "red", "blue"),
           lwd = 1,
           cex = 0.75,
           bty = bty,
           text.width = strwidth("Sub_metering_1", cex = 0.75))

    if (savetofile == TRUE) plot_to_png("plot3.png")
}

plot3()

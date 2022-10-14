source("utils.R")

plot2 = function(savetofile = TRUE, setpar = TRUE) {
    data = get_data()
    if (setpar) par(mfcol = c(1, 1))
    with(data, plot(datetime, Global_active_power, type = 'l', ylab = "Global Active Power (kilowatts)", xlab = ""))
    if (savetofile == TRUE) plot_to_png("plot2.png")
}

plot2()

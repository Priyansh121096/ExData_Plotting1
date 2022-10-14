source("utils.R")
source("plot2.R")
source("plot3.R")

plot5 = function() {
    data = get_data()
    with(data, plot(datetime, Voltage, type = 'l'))
}

plot6 = function() {
    data = get_data()
    with(data, plot(datetime, Global_reactive_power, type = 'l'))
}

plot4 = function() {
    par(mfcol = c(2, 2), mar = c(5, 3, 2, 1))

    plot2(savetofile = FALSE, setpar = FALSE)
    plot3(savetofile = FALSE, setpar = FALSE, bty = 'n')
    plot5()
    plot6()

    plot_to_png("plot4.png")
}

plot4()

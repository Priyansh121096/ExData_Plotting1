library(data.table)
library(grDevices)

get_data = function() {
    data = fread("exdata_data_household_power_consumption/household_power_consumption.txt", sep=';', header=TRUE, na.strings='?')
    data = data[data$Date %in% c("1/2/2007", "2/2/2007"), ]
    data$datetime = paste(ds$Date, ds$Time)
    data$datetime = as.POSIXct(data$datetime, format = '%d/%m/%Y %H:%M:%S')

    data
}

plot_to_png = function(filename) {
    dev.copy(png, file = filename)
    dev.off()
}

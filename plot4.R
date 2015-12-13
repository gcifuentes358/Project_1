# Plot 4 - Submeterings

source("load_data.R")

#To avoid load the data for next plots 

plot4 <- function(data = NULL)
  
{
  if (is.null(data))
    data <- loaddata()
  
  
  #Open png device
  
  png("plot4.png")
  
  #Create the canvas
  par(mfrow = c(2,2))
  
  # Plot 1
  plot(data$Time, data$Global_active_power, 
       ylab = "Global Active Power", xlab ="",
       type = "l")
  
  # Plot 2
  
  plot(data$Time, data$Voltage, 
       ylab = "Voltage", xlab ="datetime",
       type = "l")
  
  # Plot 3
  
  plot(data$Time, data$Sub_metering_1, 
       ylab = "Energy Sub metering",xlab ="",
       type = "n")
  lines(data$Time, data$Sub_metering_1)
  lines(data$Time, data$Sub_metering_2, col = "red")
  lines(data$Time, data$Sub_metering_3, col = "blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  # Plot 4
  plot(data$Time, data$Global_reactive_power, 
       ylab = "Global_reactive_power", xlab ="datetime",
       type = "l")
  
  
  dev.off()
  
}

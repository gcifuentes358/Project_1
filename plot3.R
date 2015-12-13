# Plot 3 - Submeterings

source("load_data.R")

#To avoid load the data for next plots 

plot3 <- function(data = NULL)
  
{
  if (is.null(data))
    data <- loaddata()
  
  
  #Open png device
  
  png("plot3.png")
  
  # Plot 3
  
  plot(data$Time, data$Sub_metering_1, 
       ylab = "Energy Sub metering",
       xlab ="",
       type = "n")
  lines(data$Time, data$Sub_metering_1)
  lines(data$Time, data$Sub_metering_2, col = "red")
  lines(data$Time, data$Sub_metering_3, col = "blue")
  legend("topright",
         col=c("black", "red", "blue"),
         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
         lty=1)
  
  dev.off()
  
}

# Plot 2 - Global Active Power line

source("load_data.R")

#To avoid load the data for next plots 

plot2 <- function(data = NULL)
  
{
  if (is.null(data))
    data <- loaddata()
  
  
  #Open png device
  
  png("plot2.png")
  
  # Plot 2
  
  plot(data$Time, data$Global_active_power, 
       ylab = "Global Active Power", xlab ="",
       type = "l")
  
  dev.off()
  
}

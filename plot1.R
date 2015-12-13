# Plot 1 - Global Active Power

source("load_data.R")

#To avoid load the data for next plots 

plot1 <- function(data = NULL)
  
{
  if (is.null(data))
    data <- loaddata()
  
  
  #Open png device
  
  png("plot1.png")
  
  # Plot 1
  
  hist(data$Global_active_power, col = "Red", xlab = "Global Active Power (Kilowatts)",
       ylab = "Frequency",
       main="Global Active Power")
  
  dev.off()
  
}


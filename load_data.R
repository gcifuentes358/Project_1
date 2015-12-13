# Project 1

# Function to stablish date and time, to be used in the list

dateandtime <- function(date, time)
{
  a <- paste(date, time, sep = "-")
  b <- strptime(a,format = "%d/%m/%Y-%H:%M:%S")
  b
}

# Load the information (Info is currently in the WD)

loaddata <- function()
{
  
  project1 <- read.table("household_power_consumption.txt", header = TRUE, sep =";",
                         colClasses = c(rep("character",2),rep("numeric",7)),
                         na = "?")
  
  # Convert the Date and Time columns to Date class
  
  project1$Time <- dateandtime(project1$Date,project1$Time)
  project1$Date <- as.Date(project1$Date,"%d/%m/%Y")
  
  # Only select the dates between  2007-02-01 and 2007-02-02
  
  interval <- as.Date(c("2007-02-01","2007-02-02"),"%Y-%m-%d")
  project1 <- subset(project1, Date %in% interval)
  project1
}
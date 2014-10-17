setwd("C:/Users/lmcshane/Documents/megabloks")
data <- read.csv("megabloks_20140909_r6.csv", header=T)

#R6 date conversion
date<- paste(substr(data$PublishedDate, 6, 7), substr(data$PublishedDate, 9, 10), substr(data$PublishedDate, 1, 4), sep= '/') 
date.dataframe <- as.data.frame(date)
data.date <- cbind(date.dataframe, data)

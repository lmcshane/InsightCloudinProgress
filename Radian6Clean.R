setwd("C:/Users/lmcshane/Documents/megabloks")
data <- read.csv("megabloks_20140909_r6.csv", header=T)

#R6 date conversion
data$PublishedDate <- paste(substr(data$PublishedDate, 6, 7), substr(data$PublishedDate, 9, 10), substr(data$PublishedDate, 1, 4), sep= '/') 

#Clean Host variable
data$Host = gsub( "www.", "",data$Host)

setwd("C:/Users/lmcshane/Documents/megabloks")
data <- read.csv("megabloks_20140909_r6.csv", header=T)

#R6 date conversion
data$PublishedDate <- paste(substr(data$PublishedDate, 6, 7), substr(data$PublishedDate, 9, 10), substr(data$PublishedDate, 1, 4), sep= '/') 

#Clean Host variable
data$Host = gsub( "www.", "",data$Host)

#Convert media type id <- media type 

recoderFunc <- function(data, oldvalue, newvalue) {
  
  # convert any factors to characters
  
  if (is.factor(data))     data     <- as.character(data)
  if (is.factor(oldvalue)) oldvalue <- as.character(oldvalue)
  if (is.factor(newvalue)) newvalue <- as.character(newvalue)
  
  # create the return vector
  
  newvec <- data
  
  # put recoded values into the correct position in the return vector
  
  for (i in unique(oldvalue)) newvec[data == i] <- newvalue[oldvalue == i]
  
  newvec
  
}


### loading all the datafiles

library(tidyverse)
library(plyr)
#writing the directory as a variable
dir <- setwd("D:/PhD/Experiments/Exp3 Overshadowing/Data/Exp3Overshadowing_v2")

#saving all the csv files in that directory into one variable
allOldata <- list.files(path = dir, pattern = "*.csv")

#making the file names into one list
Exp3data <- lapply(allOldata, read_csv)

#using rbind to save it al in on df
#using rbind.fill because some columns do not exist in some datafiles, namely the "preResp.key" 
Exp3 <- do.call(rbind.fill,Exp3data)

write.csv(Exp3, file = "Exp3_almostfulldataset.csv")

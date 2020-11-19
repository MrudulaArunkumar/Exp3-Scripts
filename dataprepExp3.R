### loading all the datafiles

library(tidyverse)
library(plyr)

dir <- setwd("D:/PhD/Experiments/Exp3 Overshadowing/Data/Exp3Overshadowing_v2")
allOldata <- list.files(path = dir, pattern = "*.csv")

Exp3data <- lapply(allOldata, read_csv)

#ysing rbind.fill because some columns do not exist in some datafiles, namely the "preResp.key" 
Exp3 <- do.call(rbind.fill,Exp3data)

write.csv(Exp3, file = "Exp3_almostfulldataset.csv")

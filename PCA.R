# Week 6 Marketing analytics

library(dplyr)
library(data.table)

set.seed(3)

getwd()
setwd("Users/madhuryaj/Desktop/")
setwd("/Users/madhuryaj/Desktop/marketing_analytics/")

library(readxl)
perceptions <- read.csv("perceptions.csv")
View(perceptions)

pca<-prcomp(perceptions[,2:length(perceptions)],retx=TRUE,scale=TRUE) # these values shows loading scores only

pca$sdev
pca$rotation
pca$center
pca$scale
pca$x

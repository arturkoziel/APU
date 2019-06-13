library("C50")

setwd("C:/Users/Bernadka/Desktop/APU Artur/4")
dane <- read.csv('fridges.csv')
dane$Ocena <- factor(dane$Ocena)
head(dane)
treeModel <- C5.0(x=dane[,-6], y=dane$Ocena)
treeModel
summary(treeModel)
plot(treeModel)
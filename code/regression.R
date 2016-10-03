getwd()
setwd('pandoc-test/stat159/stat159-fall2016-hw02/data')
ad <- read.csv('Advertising.csv')

regression <- lm(Sales ~ TV, data=ad)
summary<- summary(regression)

plot(regression)


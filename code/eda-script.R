getwd()
setwd('pandoc-test/stat159/stat159-fall2016-hw02/data')
ad <- read.csv('Advertising.csv')

#Summary of TV
summary(ad$TV)

#Summary of Sales
summary(ad$Sales)

hist(ad$TV, breaks=15, xlab='TV', main='Histogram of TV Advertisement', ylim=c(0,20))
hist(ad$Sales, breaks=15, xlab='Sales', main='Frequency of Sales')

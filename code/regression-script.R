#getwd()
#setwd('pandoc-test/stat159/stat159-fall2016-hw02/data')
ad <- read.csv('data/Advertising.csv')

regression <- lm(Sales ~ TV, data=ad)
summary<- summary(regression)

png("images/scatterplot-tv-sales.png")
plot(ad$TV, ad$Sales, main='TV vs Sales', xlab= 'TV', ylab='Sales')
abline(regression, col='red')
dev.off()

pdf("images/scatterplot-tv-sales.pdf")
plot(ad$TV, ad$Sales, main='TV vs Sales', xlab= 'TV', ylab='Sales')
abline(regression, col='red')
dev.off()


save(ad, regression, summary, file='data/regression.RData')

#getwd()
#setwd('pandoc-test/stat159/stat159-fall2016-hw02/data')
ad <- read.csv('data/Advertising.csv')

#Summary of TV
summary(ad$TV)

#Summary of Sales
summary(ad$Sales)


png("images/histogram-tv.png")
hist(ad$TV, breaks=15, xlab='TV', main='Histogram of TV Advertisement', ylim=c(0,20))
dev.off()

png("images/histogram-sales.png")
hist(ad$Sales, breaks=15, xlab='Sales', main='Frequency of Sales')
dev.off()

pdf("images/histogram-tv.pdf")
hist(ad$TV, breaks=15, xlab='TV', main='Histogram of TV Advertisement', ylim=c(0,20))
dev.off()

pdf("images/histogram-sales.pdf")
hist(ad$Sales, breaks=15, xlab='Sales', main='Frequency of Sales')
dev.off()


sink('data/eda-output.txt')
print('Summary of TV')
summary(ad$TV)

print('Summary of Sales')
summary(ad$Sales)
sink()



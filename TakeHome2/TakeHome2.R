big12 = read.csv("/Users/thotasairam/Documents/Fall 2016/STAT 4013 - Satistics/TakeHome2/big12football2015.csv")

attach(big12)
names(big12)


hist(yardsFor, xlab= "YardsFor", col = c( "black","orange"))
abline(h=0)

#numberofsamplesize
length(yardsFor)

#z-score
z = (mean(yardsFor) - 475)/(sd(yardsFor)/sqrt(length(yardsFor)))

z 

2*pnorm(-abs(z)) #pvalue

z.alpha = qnorm(1-.01) 

-z.alpha #critical value
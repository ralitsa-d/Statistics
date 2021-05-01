x=rnorm(100, 5, sqrt(2))
hist(x, probability=T)
lines(density(x))

s=seq(2, 9, length.out=50)
ds=dnorm(s, 5, sqrt(2))
lines(s, ds, col='red')

boxplot(x, horizontal=T)

qqnorm(x)
qqline(x)



y=runif(100, 1, 5)
min(y)
max(y)

hist(y, probability=T)

boxplot(y, horizontal=T)

qqnorm(y)
qqline(y)




z=rgamma(100, 5, 1)
hist(z, probability=T)
lines(density(z))

boxplot(z, horizontal=T)

s=seq(1, 12, length.out=50)
ds=density(s, 5, 1)
lines(s, ds, col='red')




x1=rnorm(100, 1, sqrt(2))
x2=rnorm(100, 5, sqrt(2))
x3=c(x1, x2)
hist(x3, probability = T)

boxplot(x3, horizontal=T)

qqnorm(x3)
qqline(x3)



a=rnorm(100, 5, sqrt(2))
ma=matrix(a, nrow=10)
xa=colSums(ma)
hist(xa, probability=T)
boxplot(xa, horizontal = T)
qqnorm(xa)
qqline(xa)


b=runif(10000, 1, 5)
mb=matrix(b, nrow=100)
xb=colSums(mb)
hist(xb, probability = T)
boxplot(xb, horizontal = T)
qqnorm(xb)
qqline(xb)



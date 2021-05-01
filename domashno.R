install.packages("UsingR")
library("UsingR")
attach("babies")
table(age<25)
sum(table(age))
459/1236

#1a)
t=table(age<25)
prop.table(t)

#1Á)
t1=table(age<25, smoke)
prop.table(t1)

#1â)
x=wt1
x2<-x[x!=999]
h=hist(x2)
boxplot(x2, horizontal=T)
qqnorm(x2)


race_details = cut(race, breaks = c(-1, 5, 6,7,8,9,99 ), labels = c("white","other", "black", "other", "other", "other") )
barplot(table(race_details))
smoke_details = factor( smoke, labels = c("never", "smokes ", "until current pregnancy", "once did", "unknown") )
barplot(table(smoke_details))

#3
pnbinom(6, 3, 0.6, lower.tail=F)




#4
rnorm=rnorm(100, 0:10)

#hist(rnorm)
#runif=runif(100, 0, 10)
#hist(runif)
x1=rnorm[1]
rgamma=rgamma(100, x1, 0.7)

#hist(rgamma)
##boxplot(rnorm, rgamma, horizontal=T)

hist(rgamma, probability=T)
lines(density(rgamma), col='red')
s=seq(1, 12, length.out=50)
ds=dgamma(s, 5, 1)
lines(s, ds, col='green')


#2

stickers1=function(n=100)
{
  ve=rep.int(0, 15)
  for(i in 1:n)
  {
    x=sample(1:15, 1)
    ve[x]=1
    if(sum(ve==1)==15){
      return(i)
    }
  }
}


stickers1=function(n=100)
{
  ve=rep.int(0, 15)
  i=1
  while(i<n)
  {
    x=sample(1:15, 1)
    ve[x]=1
    if(sum(ve==1)==15){
      return(i)
    }
    i=i+1
  }
}

average=function(n=100)
{
  c=0
  for(i in 1:n){
    s=stickers1(1000)
    c=c+s
  }
  return(c/n)
}


prob.stickers1 = function( n=1000 )
{
  x = rep.int( 0, n )
  c = 0
  for(i in 1 : n )
  {
    c = c + average(100)
    x[ i ] = c / ( 100 * i )
  }
  return(x)
}

prob.stickers1 = function( n=1000 )
{
  x = rep.int( 0, n )
  c = 0
  for(i in 1 : n )
  {
    c = c + average(100)
    x[ i ] = c / i
  }
  return(x)
}

x=prob.stickers1(2000)
plot(x, type='l')

#4
runif=runif(100, 0, 10)
x1=runif[1]
rgamma=rgamma(100, x1, 0.7)
boxplot(runif, rgamma, horizontal=T)
hist(rgamma, probability=T)
lines(density(rgamma))
s=seq(1, 12, length.out=50)
ds=dgamma(s, x1, 0.7)
lines(s, ds, col='red')

#1
library("UsingR")
attach("babies")
table(age<25)
sum(table(age))

age = babies$age[ babies$age != 99 ]

t=table(age<25)
prop.table(t)

t1=table(age<25, smoke)
prop.table(t1)

x=wt1
x2<-x[x!=999]
h=hist(x2)
boxplot(x2, horizontal=T)
qqnorm(x2)

race1 = cut(race, breaks = c(-1, 5, 6,7,8,9,99 ), 
            labels = c("white","other", "black", "other", "other", "other") )
barplot(table(race1))

smoke1 = factor( smoke, labels = c("never", "smokes ", "until current pregnancy", "once did", "unknown") )


barplot(table(smoke1))


barplot(prop.table(table(race1, smoke1), 1), beside = T, legend = T)

barplot(table(wt1, race1))
library(UsingR)
attach(homedata)
max(y2000)
min(y2000)
y1970[which.max(y2000)]
y1970[which.min(y2000)]
sort(y2000, decreasing=T) [1:5]
sum(y2000>750000)
mean(y1970[y2000>750000])
y2000[y1970>y2000]
order((y2000-y1970)/y1970, decreasing=T)[1:10]
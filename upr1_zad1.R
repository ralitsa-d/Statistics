x=c(8, 3, 8, 7, 15, 9, 12, 4, 9, 10, 5, 1)
m=matrix(x, nrow=4)
rownames(m)=c('r1', 'r2', 'r3', 'r4')
m=cbind(m, c(1, 3, 5, 7))
msorted=m[order(m[ ,1]) ]
msorted2=m[order(m[ ,1], m[ ,2]), ]
